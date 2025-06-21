#' Create requests to retrieve covers from the Discogs API
#'
#' @param data A tibble with the following columns: \itemize{
##'  \item{`release_title`} {The title of the release, for example an album title.}
##'  \item{`artist`} {The artist who created the release.}
##'  \item{`year`} {The year of the release.}
##'  \item{`format`} {The format of the release. Examples include "album", "LP", "CD", "Vinyl".}
##' } See
#' @param access_token A string containing your Discogs API token. Unfortunately, you have to identify yourself with your personal token to use the functionality necessery to search for album covers. If you do not have a token yet, go to <https://www.discogs.com/settings/developers> and sign in to your Discogs account (or create a new one for free) and click on "Generate new token".
#'
#' @returns A tibble with a new list column called `request`.
#' @export
#'
#' @examples
#' \dontrun{
#' example_albums |>
#'   create_request_discogs(access_token = "thisisasecret") |>
#'   retrieve_covers_discogs() |>
#'   covRflow()
#' }
create_request_discogs <- function(data, access_token) {
  data |>
    dplyr::mutate(request = purrr::pmap(list(.data$release_title, .data$artist, .data$year, .data$format), discogs_create_request, .env$access_token))
}
