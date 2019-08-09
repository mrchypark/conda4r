# conda4r <img src="man/figures/logo.png" align="right" height="139" />

<!-- badges: start -->
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/mrchypark/conda4r?branch=master&svg=true)](https://ci.appveyor.com/project/mrchypark/conda4r)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of conda4r is to install miniconda3.

## Installation

## NOT YET CRAN

You can install the released version of conda4r from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("conda4r")
```

You can install the developing version of conda4r from [github](https://github.com/mrchypark/conda4r) with:

``` r
remotes::install_github("mrchypark/conda4r")
```

## Example

`conda4r` package 

``` r
library(conda4r)
install_conda()
update_conda()
```

## Windows 10 issue

[Issue](https://github.com/conda/conda/issues/8273) report ssl error.
`fix_ssl_error()` function provide symlink solution issue mentioned.
``` r
fix_ssl_error()
```

## multilinguer project

This package is part fo multilinguer project. [multilinguer][multilinguer] is to provide cross-platform support functions of other language installation for R users.

[multilinguer]: https://github.com/mrchypark/multilinguer
