#' Create .Rprofile
#'
#' Copy a template .Rprofile to the home directory
#'
#' @details ThodbergMisc/extdata contains a template for an .Rprofile file for an effective R-setup that does not influence code execution. This file will try to adapt startup settings to whether R is run from a terminal or RStudio.
#' @export
create_Rprofile <- function(){
	# Files
	template_fname <- file.path(find.package("coRe"), "extdata/template.R")
	to_fname <- file.path("~/.Rprofile")

	# Copy file as safely as possibly
	file.copy(from=template_fname, to=to_fname, overwrite=FALSE, recursive=FALSE)
}
