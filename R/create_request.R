#' Create requests to retrieve covers from the Discogs API
#'
#' @param data A tibble with the following columns: \itemize{
##'  \item{release_title} {Stuff}
##'  \item{artist} {Stuff}
##' }
#' @param access_token
#'
#' @returns
#' @export
#'
#' @examples
create_request_discogs <- function(data, access_token) {
  data |>
    dplyr::mutate(request = purrr::pmap(list(.data$release_title, .data$artist, .data$year, .data$format), discogs_create_request, .env$access_token))
}
