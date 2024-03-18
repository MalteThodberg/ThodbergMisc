#' Detect whether the script is run locally or on server
#'
#' This function detects via nodename whether the script is run from a server or locally with the server system mounted.
#' This function basically returns the mountpoint string if the user (as detected by Sys.info) is not a server.
#' This is useful when constructing file paths, since the same code will still get correct files if mounted via sshfs.
#'
#' @param server server nodename
#' @param mountpoint Path to sshfs mountpoint.
#'
#' @return Appropriate prefix for file locations on server.
#' @export
mount <- function(server=c("esrumcont01fl.unicph.domain", "esrumhead01fl.unicph.domain"), mountpoint="~/esrum"){
	# Determine the user name
	node_name <- Sys.info()[["nodename"]]

	# Pick the appropriate filesystem location
	if(node_name %in% server){
		o <- file.path("")
	}
	else{
		stopifnot(dir.exists(mountpoint))
		o <- file.path(mountpoint)
	}

	# Return path
	return(o)
}
