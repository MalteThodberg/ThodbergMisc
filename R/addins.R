#' Insert \%>\%.
#'
#' Call this function as an addin to insert \code{\%>\%} at the cursor position.
#'
#' @export
insertPipe <- function() {
	rstudioapi::insertText("%>%")
}

#' Insert \%<-\%.
#'
#' Call this function as an addin to insert \code{\%<-\%} at the cursor position.
#'
#' @export
insertAssignment <- function() {
	rstudioapi::insertText("<-")
}

#' Insert \%->\%.
#'
#' Call this function as an addin to insert \code{\%->\%} at the cursor position.
#'
#' @export
insertReverseAssignment <- function() {
	rstudioapi::insertText("->")
}
