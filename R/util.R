prune_deleted <- function(data, field) {
    data[[field]] <- purrr::discard(
      data[[field]], ~ .x[["deleted"]]
    )
}
