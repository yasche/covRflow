build_user_agent_str <- function() {
  user_agent_pkg_name <- "covRflow"
  user_agent_pkg_version <- utils::packageVersion("covRflow")
  user_agent_pkg_url <- "https://github.com/yasche"
  user_agent_str <- paste0(user_agent_pkg_name, "/", user_agent_pkg_version, " +", user_agent_pkg_url)
}

discogs_url_query_helper <- function(item) {
  if (is.na(item)) {
    return(NULL)
  } else {
    return(item)
  }
}

discogs_create_request <- function(release_title, artist, year, access_token) {
  httr2::request("https://api.discogs.com") |>
    httr2::req_url_path_append("database/search") |>
    httr2::req_user_agent(build_user_agent_str()) |>
    httr2::req_headers(Accept = "application/vnd.discogs.v2.discogs+json") |>
    httr2::req_headers("Authorization" = paste0("Discogs token=", access_token)) |>
    httr2::req_throttle(capacity = 60, fill_time_s = 60) |>
    httr2::req_url_query(release_title = discogs_url_query_helper(release_title),
                         artist = discogs_url_query_helper(artist),
                         year = discogs_url_query_helper(year),
                         format = "album") |>
    httr2::req_method("GET")
}

discogs_tidy_body <- function(resp) {
  if (length(resp$results) == 0) {
    return(NULL)
  }
  tibble::tibble(results = resp$results) |>
    tidyr::hoist(.col = "results",
                 "community",
                 "title",
                 "cover_image",
                 "id") |>
    dplyr::mutate(community = purrr::map(.data$community, discogs_community_to_tibble)) |>
    tidyr::unnest("community") |>
    dplyr::group_by(.data$id, .data$cover_image, .data$title) |>
    dplyr::summarise(total_n = sum(.data$n)) |>
    dplyr::ungroup() |>
    dplyr::arrange(dplyr::desc(.data$total_n)) |>
    utils::head(1)
}

discogs_community_to_tibble <- function(value) {
  tibble::tibble(
    what = names(value),
    n = unlist(unname(value))
  )
}

