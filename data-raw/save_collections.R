# Define
package_collections <- list(Performance=c("parallel", "matrixStats", "BiocParallel", "qs", "fst"),
														DelayedArray=c("DelayedArray", "DelayedMatrixStats", "HDF5Array", "TileDBArray", "batchelor", "BiocSingular", "BiocNeighbors", "ResidualMatrix", "ScaledMatrix", "DelayedRandomArray", "bluster"),
														Plotting=c("grid", "gridExtra", "RColorBrewer", "VennDiagram", "pheatmap", "wesanderson", "viridis"),
														ggplot=c("GGally", "ggrepel", "ggthemes", "ggforce", "ggstance", "ggpmisc", "ggfortify", "ggmosaic", "ggpubr", "ggbeeswarm", "ggalluvial", "ggfittext"),
														Hadley=c("magrittr", "glue", "broom", "modelr", "janitor", "skimr", "snakecase"),
														DE=c("limma", "edgeR", "DEXSeq", "DESeq2", "sva"),
														Genomics=c("GenomicRanges", "rtracklayer", "SummarizedExperiment", "InteractionSet", "CAGEfightR", "AnnotationDbi", "GenomicFeatures", "GenomeInfoDb"),
														Development=c("usethis", "devtools", "pryr", "testthat", "assertthat", "covr", "knitr", "roxygen2", "profvis", "styler", "here", "checkmate", "BiocStyle"),
														Sequences=c("BSgenome", "Biostrings", "TFBSTools", "motifmatchr"),
														RStudio=c("remedy", "rstudioapi", "manipulate"),
														SingleCell=c("Seurat", "Signac", "SingleCellExperiment", 'scuttle', 'scran', 'scater', "mumosa", "DropletUtils"),
														Ordination=c("FactoMineR", "factoextra", "vegan", "ade4", "made4", "omicade4", "uwot"))

# Sort
package_collections <- package_collections[order(names(package_collections))]

# Save
usethis::use_data(package_collections, overwrite=TRUE)
