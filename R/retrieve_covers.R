#' Retrieve cover URLs from the Discogs API
#'
#' Retrieve album covers from the Discogs API with the requests created with \link[covRflow]{create_request_discogs}.
#'
#' @param data A tibble containing a `request` column previously created with \link[covRflow]{create_request_discogs}.
#'
#' @returns A tibble with new columns `response`, `body`, `id` and `cover_image`.
#' @export
#'
#' @examples
#' \dontrun{
#' example_albums |>
#'   create_request_discogs(access_token = "thisisasecret") |>
#'   retrieve_covers_discogs() |>
#'   covRflow()
#' }
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
