#' Connect to the HIDRA database
#'
#' @param system 'mac' or 'windows'
#'
#' @return Creates a database connection
#' @export
#'
#' @examples  \dontrun{connect_hidra("mac")}
connect_hidra <- function(system = "mac") {

  if (system == "mac") {
    driver <- "ODBC Driver 18 for SQL Server"
  } else if (system == "windows") {
    driver <- "SQL Server"
  } else {
    stop("System must be 'mac' or 'windows'")
  }

  DBI::dbConnect(
    odbc::odbc(),
    Driver   = driver,
    Server = "SQLDWPRD01",
    Database = "ccod_rep_prod",
    port = 1433,
    trusted_connection = "yes"
  )
}
