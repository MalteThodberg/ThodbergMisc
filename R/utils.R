#' Return top or bottom left corner of object
#'
#' Simple wrapper of head/tail that only prints the first few columns.
#'
#' @param x same as for head
#' @param n same as for head
#' @param head logical: TRUE for head, FALSE for tail.
#'
#' @return same as for head/tail, but with the the same number of columns as rows.
#' @export
#'
#' @examples
#' corner(iris)
corner <- function(x, n=5, head=TRUE){
	stopifnot(is.numeric(n),
						length(n) == 1L,
						is.logical(head),
						length(head) == 1L)

	if(isTRUE(head)){
		o <- head(x=x, n=c(n,n))
	}else{
		o <- utils::tail(x=x, n=c(n,n))}

	o
}
