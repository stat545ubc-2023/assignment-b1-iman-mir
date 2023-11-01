counter <- function(df, group_var) {
     df |>
    group_by({{ group_var }}) |>
    summarise(n = n())}
