
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datatriage

<!-- badges: start -->
<!-- badges: end -->

The goal of datatriage is to automate tasks that are part of HIDRA data
requests.

## Installation

You can install the development version of datatriage like so:

``` r
remotes::install_github("fhdsl/datatriage")
```

## Workflow

- Set up project:

<!-- -->

    ├── reponame_data_shared # data to share with requestor
    ├── code # data set development code
    ├── data # any data sent by the requestor
    ├── docs # any supporting docs
    └── .gitignore

- Begin query using `query_template.qmd`

- Write data sets to `reponame_data_shared/` using the {pins} package.

- Code review

- Summarize results in `data_report_template.qmd`

- Code review

- Copy `data_report.html`, `query_template.html` to
  `reponame_data_shared/`

- Manage file permissions

- Send e-mail to requestor
