prune_deleted <- function(data, field) {
    data[[field]] <- purrr::discard(
      data[[field]], ~ .x[["deleted"]]
    )
}

null_to_na <- function(x) {
  ifelse(is.null(x), NA, x)
}

combine_cols <- function(data, colname) {
  x = paste0(colname, ".x")
  y = paste0(colname, ".y")
  data[[colname]] = ifelse(
    is.na(data[[y]]),
    data[[x]],
    data[[y]]
  )
  data[[x]] <- NULL
  data[[y]] <- NULL
}
