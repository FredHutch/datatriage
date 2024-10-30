#' Connect to the HIDRA database
#'
#' Requires [ODBC Driver 17 for SQL Server](https://learn.microsoft.com/en-us/sql/connect/odbc/linux-mac/install-microsoft-odbc-driver-sql-server-macos?view=sql-server-ver16)
#' if on macOS.
#'
#' @param system 'mac' or 'windows'
#'
#' @return Creates a database connection
#' @export
#'
#' @examples  \dontrun{con <- connect_hidra("mac")}
connect_hidra <- function(system = "mac") {

  if (system == "mac" | system == "Mac") {
    driver <- "ODBC Driver 17 for SQL Server"
  } else if (system == "windows" | system == "Windows") {
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
