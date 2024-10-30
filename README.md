
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datatriage

<!-- badges: start -->
<!-- badges: end -->

The goal of datatriage is to automate tasks that are part of HIDRA data
requests. For more information about HIDRA, see 
[Fred Hutch CenterNet](https://centernet.fredhutch.org/u/data-science-lab/patient-data.html)
and the 
[Biomedical Data Science Wiki page](https://sciwiki.fredhutch.org/datascience/patient-data/).

## Installation

You can install the development version of datatriage like so:

``` r
remotes::install_github("FredHutch/datatriage")
```

## Workflow

- Use `datatriage::create_triage_project()` to set up project.

<!-- -->

    ├── reponame_data_shared # data to share with requestor
    ├── code # data set development code
    ├── data # any data sent by the requestor
    ├── docs # any supporting docs
    ├── README.md 
    └── .gitignore

- Set up git and GitHub with:

```
usethis::use_git()
usethis::use_github(organisation = "FredHutch", private = TRUE)
```

- Create a branch.

- Begin query using `database_query.qmd`.

- Open a PR for the database query.

- Use `data_report.qmd` for create an overview and EDA of the data that will be 
shared.

- Write data sets to `reponame_data_shared/`.

- Summarize results in `data_report_template.qmd`.

- Open a PR for the data report. 

- Manage file permissions.

- Send e-mail to the requestor and cc `analytics@fredhutch.org`.
