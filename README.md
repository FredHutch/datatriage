
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datatriage

<!-- badges: start -->
<!-- badges: end -->

The goal of datatriage is to automate tasks that are part of clinical
data requests.

## Installation

You can install the development version of datatriage like so:

``` r
remotes::install_github("fhdsl/datatriage")
```

## Workflow

- Set up project:

<!-- -->

    ├── reponame_data_shared
    ├── code
    ├── data
    ├── docs
    └── .gitignore

- Fill out documents:

  - `compliance_checklist.docx`
  - `data_plan.docx`

- Begin query using `query_template.qmd`

- Write results to `data/`

- Summarize results in `data_report_template.qmd`

- Code review

- Copy `data_report.html`, `query_template.html`, and `data/` to
  `reponame_data_shared/`

- Manage file permissions

- Send e-mail to requestor
