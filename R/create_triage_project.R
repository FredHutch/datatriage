
#' Create a data triage project
#'
#' @param path where to create the project
#'
#' Use: LastFirst_ID
#'
#' @return creates a new R project in a new R session
#' @export
#'
#' @examples \dontrun{create_triage_project("~/Documents/SimpsonLisa_RC987")}
create_triage_project <- function(path) {

  # create a project
  usethis::create_project(path = path)

  # must set active project otherwise it is <no active project>
  usethis::proj_set(path = path)

  # create directory for shared data (where OneDrive permissions given to data requestor)
  repo_name <- basename(path)
  usethis::use_directory(glue::glue("{repo_name}_data_shared"))

  # project directories
  usethis::use_directory("data")
  usethis::use_directory("code")
  usethis::use_directory("docs")

  # templates
  usethis::use_template(
    template = "database_query_template.qmd",
    save_as = "code/database_query.qmd",
    package = "datatriage"
  )

  usethis::use_template(
    template = "data_report_template.qmd",
    save_as = "code/data_report.qmd",
    package = "datatriage"
  )

  usethis::use_template(
    template = "readme_template.md",
    save_as = "README.md",
    data = list(title = repo_name),
    package = "datatriage"
  )

  # ignore data files
  usethis::use_git_ignore("data/*")
  usethis::use_git_ignore(glue::glue("{repo_name}_data_shared/*"))


}
