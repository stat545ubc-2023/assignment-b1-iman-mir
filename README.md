README
================

The goal of counter is to determine the count of different data points
in a group within a data frame.

In order to create the function, I used the R packages of devtools,
dplyr and devtools.

``` r
library(devtools)
```

    ## Loading required package: usethis

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
library(testthat)
```

    ## 
    ## Attaching package: 'testthat'

    ## The following object is masked from 'package:dplyr':
    ## 
    ##     matches

    ## The following object is masked from 'package:devtools':
    ## 
    ##     test_file

For analysis purposes, I chose to complete thus assignment base don the
datateachr datbase.

``` r
library(datateachr)
```

## Files explanation

1.  assignment-b1-iman_mir.rmd is a rmd which contains 4 excercises
    based on the function counter
2.  assignment-b1-iman_mir.md is the markdown version of the file
