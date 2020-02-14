
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ThodbergMisc

<!-- badges: start -->

<!-- badges: end -->

ThodbergMisc stores various things I use all the time:

  - Disables `stringsAsFactors` and saving workspace by default.
  - Useful and sorted collections of CRAN and Bioconductor packages
  - Template .Rprofile
  - A few useful Rstudio addins.

## Installation

`ThodbergMisc` will only live on github:

``` r
# install.packages("devtools")
devtools::install_github("MalteThodberg/ThodbergMisc")
```

To install all packages:

``` r
# Install installers
install.packages(c("devtools", "BiocManager"))

# Install from  github
devtools::install_github("maltethodberg/ThodbergMisc")
devtools::install_github("jalvesaq/colorout")

# Install all collections
install.packages(unlist(ThodbergMisc::package_collections))
BiocManager::install(unlist(ThodbergMisc::package_collections))
install.packages("tidyverse)
```

If you need the .Rprofile, look at `create_Rprofile`

## Package collections

``` r
library(ThodbergMisc)
#> Disabling stringsAsFactor, disabling workspace saving...
package_collections
#> $Annotation
#> [1] "AnnotationDbi"   "GenomicFeatures"
#> 
#> $DE
#> [1] "limma"  "edgeR"  "DEXSeq" "DESeq2" "sva"   
#> 
#> $Development
#>  [1] "usethis"    "devtools"   "pryr"       "testthat"   "assertthat"
#>  [6] "covr"       "knitr"      "roxygen2"   "profvis"    "styler"    
#> [11] "remedy"     "snakecase"  "here"      
#> 
#> $Genomics
#> [1] "GenomicRanges"        "rtracklayer"          "SummarizedExperiment"
#> [4] "InteractionSet"      
#> 
#> $ggplot
#>  [1] "GGally"     "ggrepel"    "ggthemes"   "ggforce"    "ggstance"  
#>  [6] "ggpmisc"    "ggfortify"  "ggmosaic"   "ggpubr"     "ggbeeswarm"
#> [11] "ggalluvial" "ggfittext" 
#> 
#> $Hadley
#> [1] "magrittr" "glue"     "broom"    "modelr"   "janitor"  "skimr"   
#> 
#> $Performance
#> [1] "parallel"     "matrixStats"  "BiocParallel"
#> 
#> $Plotting
#> [1] "grid"         "gridExtra"    "RColorBrewer" "VennDiagram"  "pheatmap"    
#> [6] "wesanderson"  "viridis"     
#> 
#> $Sequences
#> [1] "BSgenome"   "Biostrings"
#> 
#> $Terminal
#> [1] "colorout"   "rstudioapi" "manipulate"
```
