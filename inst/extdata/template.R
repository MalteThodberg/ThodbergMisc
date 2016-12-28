#======================
# Basic settings
#======================

# Disable GUI menues
options(menu.graphics=FALSE)

# Always use official cran mirror
options(repos = c(CRAN = "https://cran.rstudio.com"))

# Autocompletion for package names
utils::rc.settings(ipck=TRUE)

# Don't use scientific notation
options(scipen=10)

# Only print 1000 lines, to avoid crashing terminal
options(max.print = 1000)

#======================
# Attempt to color terminal or add RStudio features
#======================
.First <- function() {
	if(interactive()){
		if(Sys.getenv("RSTUDIO") == 1){
			require("rstudioapi")
			require("manipulate")
		}else if(Sys.getenv("TERM") == "xterm-256color"){
			require("colorout")
			require("setwidth")
		}else if(Sys.getenv("TERM") == "xterm"){
			require("colorout")
			require("setwidth")
		}
	}
}
