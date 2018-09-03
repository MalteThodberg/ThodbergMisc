.onAttach <- function(...) {
	packageStartupMessage("Disabling stringsAsFactor, disabling workspace saving...")

	# Disable stringsAsFactors
	options(stringsAsFactors = FALSE)

	# Do not save workspace as default
	formals(q) <- list(save="no")

	# Update repository manager
	# source("http://bioconductor.org/biocLite.R")
}
