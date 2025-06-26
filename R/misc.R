#' Prints the full text of the Apache 2.0 license to the console
#'
#' @description
#' The HTML, CSS and JavaScript code necessary to produce the Coverflow in the Viewer panel is licensed under Apache 2.0.
#' Part of its requirements is to make the license available in packages using the licensed software.
#' This functions helps to fulfill that requirement.
#'
#' @returns Prints the Apache 2.0 license to the console.
#' @export
#'
#' @examples
#' view_apache_license()
view_apache_license <- function() {
  readr::read_lines(system.file("extdata/apache_license.txt", package = "covRflow")) |>
    paste(collapse = "\n") |>
    cat()
  cat("\n\n\nIt is also available as a plain text file under inst/extdata")
}
