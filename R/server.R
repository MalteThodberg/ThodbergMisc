#' Detect whether the script is run locally or on server
#'
#' This function detects via username whether the script is run from a server or locally with the server system mounted.
#' This function basically returns the mountpoint string if the user (as detected by Sys.info) is not servername.
#' This is useful when constructing file paths, since the same code will still get correct files if mounted via sshfs.
#'
#' @param servername username on server.
#' @param mountpoint Path to sshfs mountpoint.
#'
#' @return Appropriate prefix for file locations on server.
#' @export
run_loc <- function(servername="nzl922", mountpoint="~/server"){
	# Determine the user name
	user_name <- Sys.info()[["user"]]

	# Pick the appropriate filesystem location
	if(user_name == servername){
		o <- file.path("")
	}
	else{
		stopifnot(dir.exists(mountpoint))
		o <- file.path(mountpoint)
	}

	# Return path
	return(o)
}
