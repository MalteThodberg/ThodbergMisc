# Define
package_collections <- list(Performance=c("parallel", "matrixStats", "BiocParallel"),
														Plotting=c("grid", "gridExtra", "RColorBrewer", "VennDiagram", "pheatmap", "wesanderson", "viridis"),
														ggplot=c("GGally", "ggrepel", "ggthemes", "ggforce", "ggstance", "ggpmisc", "ggfortify", "ggmosaic", "ggpubr", "ggalt", "ggbeeswarm", "ggalluvial"),
														Hadley=c("magrittr", "glue", "broom", "modelr"),
														DE=c("limma", "edgeR", "DEXSeq", "DESeq2", "sva"),
														Genomics=c("GenomicRanges", "rtracklayer", "SummarizedExperiment", "InteractionSet"),
														Annotation=c("AnnotationDbi", "GenomicFeatures"),
														Development=c("devtools", "pryr", "testthat", "assertthat", "covr", "knitr", "roxygen2", "profvis"),
														Sequences=c("BSgenome", "Biostrings"),
														Terminal=c("colorout", "rstudioapi", "manipulate"))

# Sort
package_collections <- package_collections[order(names(package_collections))]

# Save
devtools::use_data(package_collections, overwrite=TRUE)
