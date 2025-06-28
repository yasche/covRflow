covRflow <- function(data) {
  rlang::inform("Original HTML, CSS and JavaScript code for the coverflow were written by Bramus (https://bram.us) for https://scroll-driven-animations.style/ and are licensed under Apache 2.0.\nType `view_apache_license()` to view the license.", .frequency = "once", .frequency_id = "apache_license_info")

  data <- dplyr::filter(data, !is.na(.data$cover_image))

  replacement_str <- tibble::tibble(
    base_str = list_element_base_str,
    covers = data$cover_image,
    alt_txt = paste(data$release_title, data$artist, sep = " - ")
  ) |>
    dplyr::mutate(base_str = stringr::str_replace(.data$base_str, "ALBUM_COVER_IMG", .data$covers)) |>
    dplyr::mutate(base_str = stringr::str_replace(.data$base_str, "ALT_TEXT", .data$alt_txt)) |>
    dplyr::pull("base_str") |>
    paste(collapse = "")

  temp_dir <- tempfile()
  dir.create(temp_dir)
  html_file <- file.path(temp_dir, "index.html")

  readr::read_lines(paste0(system.file("extdata", package = "covRflow"), "/index.html")) |>
    stringr::str_replace("##PASTE_COVERS_HERE##", replacement_str) |>
    readr::write_lines(html_file)

  viewer <- getOption("viewer")
  viewer(html_file)
}
