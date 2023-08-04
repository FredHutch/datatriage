#' Read in saved CSV files in `data/`
#'
#' @return loads object into environment
#' @export
#'
#' @examples
get_saved_data <- function() {
  saved_files <- list.files(here("data"))

  purrr::map(saved_files, read_saved_data)
}

read_saved_data <- function(file_name) {
  df <- read_csv(here("data", file_name))

  assign(
    str_split(file_name, "\\.", simplify=T)[, 1],
    df
  )
}
