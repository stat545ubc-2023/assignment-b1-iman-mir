
<!-- README.md is generated from README.Rmd. Please edit that file -->

# counter

<!-- badges: start -->
<!-- badges: end -->

The goal of counter is to determine the count of different data points
in a group within a data frame.

In order to create the function, I used the R packages of
dplyr,tidyverse, devtools and datateachr.

``` r
library(devtools)
#> Loading required package: usethis
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
library(datateachr)
```

## Installation

You can install the development version of counter from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2023/assignment-b1-iman-mir")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
library(counter)
counter(vancouver_trees, height_range_id)
#> # A tibble: 11 × 2
#>    height_range_id     n
#>              <dbl> <int>
#>  1               0   214
#>  2               1 39959
#>  3               2 42206
#>  4               3 26307
#>  5               4 20530
#>  6               5  9014
#>  7               6  5195
#>  8               7  2225
#>  9               8   746
#> 10               9   203
#> 11              10    12
```

## Files explanation

1.  The description file provides metadata about the counter package
2.  The namespace file is the package export for external use and the
    external functions the counter package imports from other packages
3.  The man file contains the counter.rd file with the function
    definition
4.  The R file contains the counter.R file with the function definition
5.  The tests and nested testthat file contains test-counter.R which is
    a file with different tests of the counter function
