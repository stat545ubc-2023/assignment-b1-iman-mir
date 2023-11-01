Assignment B1 Iman Mir
================

## Installation and Setup

In order to create the function, I used the R packages of
dplyr,tidyverse, devtools and datateachr.

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
library(datateachr)
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

## Exercise 1: Make a Function

``` r
counter <- function(df, group_var) {
     df |>
    group_by({{ group_var }}) |>
    summarise(n = n())}
```

This function at a high level counts the number of different data points
in a group within a data frame. The objects it expects you to input is a
dataframe and a group variable within the same function. The object that
the function outputs is a tibble with the group, the data points and the
count of each data point.

## Exercise 2: Document Function

``` r
#' Counts number of different vairables within a group. This is an important #' function that can be used for dataframe analyses as it determines which #' variables are the most or least abundant in a group. 
#'
#' @param df A dataframe with different groups.
#' @param group_var The group of interest.
#'
#' @return A tibble.
#' @export

counter <- function(df, group_var) {
     df |>
    group_by({{ group_var }}) |>
    summarise(n = n())}
```

## Exercise 3: Function Examples

``` r
#Example 1 
counter(vancouver_trees, height_range_id )
```

    ## # A tibble: 11 × 2
    ##    height_range_id     n
    ##              <dbl> <int>
    ##  1               0   214
    ##  2               1 39959
    ##  3               2 42206
    ##  4               3 26307
    ##  5               4 20530
    ##  6               5  9014
    ##  7               6  5195
    ##  8               7  2225
    ##  9               8   746
    ## 10               9   203
    ## 11              10    12

This tibble shows the number of counts per herigh range id. This would
have been a helpful function to use when I was completing my mini data
analysis deliverable 2 as I had to wrtie out the same format of
variables mjultiple times and it was not efficent.

``` r
# Example 2
counter(vancouver_trees, cultivar_name )
```

    ## # A tibble: 294 × 2
    ##    cultivar_name       n
    ##    <chr>           <int>
    ##  1 ACCOLADE           60
    ##  2 AKEBONO          2384
    ##  3 ALIA                3
    ##  4 ALLGOLD            78
    ##  5 ALMIRA              9
    ##  6 AMANOGAWA          68
    ##  7 AMERICAN BEAUTY     3
    ##  8 APOLLO             17
    ##  9 ARIE PETERS       697
    ## 10 ARISTOCRAT        607
    ## # ℹ 284 more rows

Alongside the cultivar names, the tibble also shows the number of trees
that are not accounted for without a cultivar in the NA category.

``` r
# Example 3
counter(vancouver_trees, genus_name )
```

    ## # A tibble: 97 × 2
    ##    genus_name      n
    ##    <chr>       <int>
    ##  1 ABIES         190
    ##  2 ACER        36062
    ##  3 AESCULUS     2570
    ##  4 AILANTHUS       4
    ##  5 ALBIZIA         1
    ##  6 ALNUS          74
    ##  7 AMELANCHIER   226
    ##  8 ARALIA          4
    ##  9 ARAUCARIA      10
    ## 10 ARBUTUS        10
    ## # ℹ 87 more rows

This tibble is also interesting as the count between the different
genus’s shows the major differences in the types of trees found within
vancouver. For example, the ACER genus has up to 26062 trees in
vancouver (from this dataset) while ALBIZIA only has 1.

## Excercise \#4 : Test Function

``` r
# Test #1 -> Groups without NA
answer_1 <- vancouver_trees %>%
  group_by(species_name ) %>%
  summarise(n = n())

test_that("Test that counter works with group with no NA", {
  expect_equal(counter(vancouver_trees, species_name), answer_1)
})
```

    ## Test passed 🥳

``` r
# Test #2 -> Groups with NA
answer_2 <- vancouver_trees %>%
  group_by(longitude ) %>%
  summarise(n = n())

test_that("Test that counter works with group with  NA", {
  expect_equal(counter(vancouver_trees, longitude), answer_2)
})
```

    ## Test passed 🥇

``` r
# Test #3 -> Groups of different type (date format)
answer_3 <- vancouver_trees %>%
  group_by(date_planted ) %>%
  summarise(n = n())

test_that("Test that counter works with group with  NA", {
  expect_equal(counter(vancouver_trees, date_planted), answer_3)
})
```

    ## Test passed 🥇

For each of the tests I created an answer variable with the answer of th
question completed without the counter function.
