prune_deleted <- function(data, field) {
    data[[field]] <- purrr::discard(
      data[[field]], ~ .x[["deleted"]]
    )
}

null_to_na <- function(x) {
  ifelse(is.null(x), NA, x)
}
