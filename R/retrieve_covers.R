retrieve_covers_discogs <- function(data) {
  data <- data |>
    dplyr::mutate(response = purrr::map(.data$request, httr2::req_perform)) |>
    dplyr::mutate(body = purrr::map(.data$response, httr2::resp_body_json)) |>
    dplyr::mutate(body_tidy = purrr::map(.data$body, discogs_tidy_body)) |>
    tidyr::unnest("body_tidy", keep_empty = TRUE) |>
    dplyr::select(-"total_n", -"title")

  retrieve_end_message(data)

  data
}
