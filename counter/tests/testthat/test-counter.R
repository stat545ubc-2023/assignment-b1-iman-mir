# Loading libraries for answer variables
library(datateachr)
library(dplyr)

# Test #1 -> Groups without NA
answer_1 <- vancouver_trees %>%
  group_by(species_name ) %>%
  summarise(n = n())

test_that("Test that counter works with group with no NA", {
  expect_equal(counter(vancouver_trees, species_name), answer_1)
})


# Test #2 -> Groups with NA
answer_2 <- vancouver_trees %>%
  group_by(longitude ) %>%
  summarise(n = n())

test_that("Test that counter works with group with  NA", {
  expect_equal(counter(vancouver_trees, longitude), answer_2)
})


# Test #3 -> Groups of different type (date format)
answer_3 <- vancouver_trees %>%
  group_by(date_planted ) %>%
  summarise(n = n())

test_that("Test that counter works with group with  NA", {
  expect_equal(counter(vancouver_trees, date_planted), answer_3)
})
