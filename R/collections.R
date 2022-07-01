#' Silently add packages
#'
#' Load packages without any info returned
#'
#' @param packages character vector of package names
#' @details Uses invisible() and supressPackageStartMessages() to silently load the packages.
#' @export
silent_library <- function(packages){
	invisible(sapply(packages, function(x) suppressPackageStartupMessages(require(x, character.only=TRUE))))
}

#' Load package collection
#'
#' Load a collection of packages.
#'
#' @param x name of collection.
#'
#' @return Nothing, packages are silenty loaded.
#' @export
collections <- function(x){
	# Prechecks
	stopifnot(is.character(x))
	stopifnot(length(x) == 1)
	stopifnot(x %in% names(ThodbergMisc::package_collections))

	# Retrieve packages
	y <- ThodbergMisc::package_collections[[x]]

	# To be loaded
	z <- y[!paste0("package:", y) %in% search()]

	if(length(z) > 0){
		# Check if packages are available
		stopifnot(all(z %in% rownames(utils::installed.packages())))

		# Silenty load
		message("Loading packages: ", paste(z, collapse=", "))
		silent_library(z)
	}else{
		message(x, " collection already loaded")
	}
}
