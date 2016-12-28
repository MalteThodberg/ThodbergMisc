# Define
package_collections <- list(Performance=c("parallel", "matrixStats"),
														Plotting=c("grid", "gridExtra", "RColorBrewer", "VennDiagram", "pheatmap", "wesanderson", "viridis"),
														ggplot=c("GGally", "ggrepel", "ggthemes"),
														DE=c("limma", "edgeR", "DEXSeq", "DESeq2", "sva"),
														Genomics=c("GenomicRanges", "rtracklayer", "SummarizedExperiment"),
														Annotation=c("AnnotationDbi", "GenomicFeatures"),
														Development=c("devtools", "pryr", "testthat", "assertthat", "covr"),
														Sequences=c("BSgenome", "Biostrings"),
														Terminal=c("colorout", "setwidth", "rstudioapi", "manipulate"))

# Sort
package_collections <- package_collections[order(names(package_collections))]

# Save
devtools::use_data(package_collections, overwrite=TRUE)
