
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ThodbergMisc

<!-- badges: start -->
<!-- badges: end -->

ThodbergMisc stores various things I use all the time:

- Useful and sorted collections of CRAN and Bioconductor packages.
- Template .Rprofile.
- A few useful Rstudio addins.
- Small useful R functions.

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

# Install all collections
install.packages(unlist(ThodbergMisc::package_collections))
BiocManager::install(unlist(ThodbergMisc::package_collections))
install.packages("tidyverse)
```

If you need the .Rprofile, look at `create_Rprofile`

## Package collections

``` r
library(ThodbergMisc)
package_collections
#> $DE
#> [1] "limma"  "edgeR"  "DEXSeq" "DESeq2" "sva"   
#> 
#> $DelayedArray
#>  [1] "DelayedArray"       "DelayedMatrixStats" "HDF5Array"         
#>  [4] "TileDBArray"        "batchelor"          "BiocSingular"      
#>  [7] "BiocNeighbors"      "ResidualMatrix"     "ScaledMatrix"      
#> [10] "DelayedRandomArray" "bluster"           
#> 
#> $Development
#>  [1] "usethis"    "devtools"   "pryr"       "testthat"   "assertthat"
#>  [6] "covr"       "knitr"      "roxygen2"   "profvis"    "styler"    
#> [11] "here"       "checkmate"  "BiocStyle" 
#> 
#> $Genomics
#> [1] "GenomicRanges"        "rtracklayer"          "SummarizedExperiment"
#> [4] "InteractionSet"       "CAGEfightR"           "AnnotationDbi"       
#> [7] "GenomicFeatures"      "GenomeInfoDb"        
#> 
#> $ggplot
#>  [1] "patchwork"  "GGally"     "ggrepel"    "ggthemes"   "ggforce"   
#>  [6] "ggstance"   "ggpmisc"    "ggfortify"  "ggmosaic"   "ggpubr"    
#> [11] "ggbeeswarm" "ggalluvial" "ggfittext" 
#> 
#> $Hadley
#> [1] "magrittr"  "glue"      "broom"     "modelr"    "janitor"   "skimr"    
#> [7] "snakecase"
#> 
#> $Ordination
#> [1] "FactoMineR" "factoextra" "vegan"      "ade4"       "made4"     
#> [6] "omicade4"   "uwot"      
#> 
#> $Performance
#> [1] "parallel"     "matrixStats"  "BiocParallel" "qs"           "fst"         
#> 
#> $Plotting
#> [1] "grid"         "gridExtra"    "RColorBrewer" "VennDiagram"  "pheatmap"    
#> [6] "wesanderson"  "viridis"     
#> 
#> $RStudio
#> [1] "remedy"     "rstudioapi" "manipulate"
#> 
#> $Sequences
#> [1] "BSgenome"    "Biostrings"  "TFBSTools"   "motifmatchr"
#> 
#> $SingleCell
#> [1] "Seurat"               "Signac"               "SingleCellExperiment"
#> [4] "scuttle"              "scran"                "scater"              
#> [7] "mumosa"               "DropletUtils"
```
