#' Counts Data Points in Data Frame Group
#'
#' @param df A dataframe with different groups.
#' @param group_var The group of interest.
#'
#' @return A tibble.
#' @import devtools dplyr datateachr
#' @export
#'
#' @examples
#' counter(vancouver_trees, height_range_id )
#' counter(vancouver_trees, cultivar_name )
#' counter(vancouver_trees, genus_name )

counter <- function(df, group_var) {
     df |>
    group_by({{ group_var }}) |>
    summarise(n = n())}
