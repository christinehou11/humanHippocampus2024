library(here)
library(sessioninfo)


outdir <- "humanHippocampus2024_files"
pkgname <- "humanHippocampus2024"

meta <- data.frame(
    Title = c(
        "spe",
        "sce"
    ),
    Description = c(
        "SpatialExperiment with spatially-resolved transcriptomics (SRT) from adjacent tissue sections of the anterior human hippocampus across ten adult neurotypical donors usng 10x Genomics Visium, generated at the Lieber Institute for Brain Development (LIBD) and available through
        the humanHippocampus2024 Bioconductor package",
        "SingleCellExperiment with single-nucleus RNA-sequencing (snRNA-seq) from adjacent tissue sections of the anterior human hippocampus across ten adult neurotypical donors usng 10x Genomics Visium, generated at the  Lieber Institute for Brain Development (LIBD) and available through the humanHippocampus2024 Bioconductor package"
    ),
    BiocVersion = "3.20",
    Genome = "GRCh38",
    SourceType = "RDA",
    SourceUrl = "https://github.com/LieberInstitute/spatial_hpc",
    SourceVersion = "April 27 2024",
    Species = "Homo sapiens",
    TaxonomyId = "9606",
    Coordinate_1_based = TRUE,
    DataProvider = "Lieber Institute for Brain Development (LIBD)",
    Maintainer = "Erik D. Nelson <erik.nelson116@gmail.com>",
    RDataClass = c("SpatialExperiment","SingleCellExperiment"),
    DispatchClass = "Rda",
    RDataPath = file.path(
      pkgname,
      outdir,
      c(
        "spe.rda",
        "sce.rda"
      )
    ),
    Tags = "spatialHPC:LIBD:humanHippocampus:homoSapians",
    row.names = NULL,
    stringsAsFactors = FALSE
    )


write.csv(
    meta,
    file = here::here("inst", "extdata", "metadata.csv"),
    row.names = FALSE
    )

## Check
if (FALSE) {
    AnnotationHubData::makeAnnotationHubMetadata(here::here(),
                        fileName = "metadata.csv")
    }

## Reproducibility Information
print("Reproducibility information:")
Sys.time()
proc.time()
options(width = 120)
session_info()

# ─ Session info ───────────────────────────────────────────────────────────────────────────────────────────────────────
# setting  value
# version  R version 4.3.3 (2024-02-29)
# os       macOS 15.0
# system   aarch64, darwin20
# ui       RStudio
# language (EN)
# collate  en_US.UTF-8
# ctype    en_US.UTF-8
# tz       America/New_York
# date     2024-09-27
# rstudio  2024.04.1+748 Chocolate Cosmos (desktop)
# pandoc   3.1.11 @ /Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/aarch64/ (via rmarkdown)
#
# ─ Packages ───────────────────────────────────────────────────────────────────────────────────────────────────────────
# package                * version   date (UTC) lib source
# abind                    1.4-8     2024-09-12 [1] CRAN (R 4.3.3)
# AnnotationDbi            1.64.1    2023-11-02 [1] Bioconductor
# AnnotationForge          1.44.0    2023-10-26 [1] Bioconductor
# AnnotationHub            3.10.1    2024-04-06 [1] Bioconductor 3.18 (R 4.3.3)
# AnnotationHubData        1.32.1    2024-02-13 [1] Bioconductor 3.18 (R 4.3.2)
# Biobase                  2.62.0    2023-10-26 [1] Bioconductor
# BiocBaseUtils            1.4.0     2023-10-26 [1] Bioconductor
# BiocCheck                1.38.2    2024-01-27 [1] Bioconductor 3.18 (R 4.3.2)
# BiocFileCache            2.10.2    2024-03-30 [1] Bioconductor 3.18 (R 4.3.3)
# BiocGenerics             0.48.1    2023-11-02 [1] Bioconductor
# BiocIO                   1.12.0    2023-10-26 [1] Bioconductor
# BiocManager              1.30.25   2024-08-28 [1] CRAN (R 4.3.3)
# BiocParallel             1.36.0    2023-10-26 [1] Bioconductor
# BiocVersion              3.18.1    2023-11-18 [1] Bioconductor 3.18 (R 4.3.2)
# biocViews                1.70.0    2023-10-26 [1] Bioconductor
# biomaRt                  2.58.2    2024-02-03 [1] Bioconductor 3.18 (R 4.3.2)
# Biostrings               2.70.3    2024-03-16 [1] Bioconductor 3.18 (R 4.3.3)
# bit                      4.5.0     2024-09-20 [1] CRAN (R 4.3.3)
# bit64                    4.5.2     2024-09-22 [1] CRAN (R 4.3.3)
# bitops                   1.0-8     2024-07-29 [1] CRAN (R 4.3.3)
# blob                     1.2.4     2023-03-17 [1] CRAN (R 4.3.0)
# cachem                   1.1.0     2024-05-16 [1] CRAN (R 4.3.3)
# cli                      3.6.3     2024-06-21 [1] CRAN (R 4.3.3)
# codetools                0.2-20    2024-03-31 [1] CRAN (R 4.3.1)
# crayon                   1.5.3     2024-06-20 [1] CRAN (R 4.3.3)
# curl                     5.2.3     2024-09-20 [1] CRAN (R 4.3.3)
# DBI                      1.2.3     2024-06-02 [1] CRAN (R 4.3.3)
# dbplyr                   2.5.0     2024-03-19 [1] CRAN (R 4.3.1)
# DelayedArray             0.28.0    2023-11-06 [1] Bioconductor
# digest                   0.6.37    2024-08-19 [1] CRAN (R 4.3.3)
# dplyr                    1.1.4     2023-11-17 [1] CRAN (R 4.3.1)
# evaluate                 1.0.0     2024-09-17 [1] CRAN (R 4.3.3)
# fansi                    1.0.6     2023-12-08 [1] CRAN (R 4.3.1)
# fastmap                  1.2.0     2024-05-15 [1] CRAN (R 4.3.3)
# filelock                 1.0.3     2023-12-11 [1] CRAN (R 4.3.1)
# formatR                  1.14      2023-01-17 [1] CRAN (R 4.3.0)
# futile.logger          * 1.4.3     2016-07-10 [1] CRAN (R 4.3.0)
# futile.options           1.0.1     2018-04-20 [1] CRAN (R 4.3.0)
# generics                 0.1.3     2022-07-05 [1] CRAN (R 4.3.0)
# GenomeInfoDb             1.38.8    2024-03-16 [1] Bioconductor 3.18 (R 4.3.3)
# GenomeInfoDbData         1.2.11    2024-02-11 [1] Bioconductor
# GenomicAlignments        1.38.2    2024-01-20 [1] Bioconductor 3.18 (R 4.3.2)
# GenomicFeatures          1.54.4    2024-03-12 [1] Bioconductor 3.18 (R 4.3.3)
# GenomicRanges            1.54.1    2023-10-30 [1] Bioconductor
# glue                     1.7.0     2024-01-09 [1] CRAN (R 4.3.1)
# graph                    1.80.0    2023-10-26 [1] Bioconductor
# here                   * 1.0.1     2020-12-13 [1] CRAN (R 4.3.0)
# hms                      1.1.3     2023-03-21 [1] CRAN (R 4.3.0)
# htmltools                0.5.8.1   2024-04-04 [1] CRAN (R 4.3.1)
# httpuv                   1.6.15    2024-03-26 [1] CRAN (R 4.3.1)
# httr                     1.4.7     2023-08-15 [1] CRAN (R 4.3.0)
# httr2                    1.0.4     2024-09-13 [1] CRAN (R 4.3.3)
# interactiveDisplayBase   1.40.0    2023-10-26 [1] Bioconductor
# IRanges                  2.36.0    2023-10-26 [1] Bioconductor
# jsonlite                 1.8.9     2024-09-20 [1] CRAN (R 4.3.3)
# KEGGREST                 1.42.0    2023-10-26 [1] Bioconductor
# knitr                    1.48      2024-07-07 [1] CRAN (R 4.3.3)
# lambda.r                 1.2.4     2019-09-18 [1] CRAN (R 4.3.0)
# later                    1.3.2     2023-12-06 [1] CRAN (R 4.3.1)
# lattice                  0.22-6    2024-03-20 [1] CRAN (R 4.3.1)
# lifecycle                1.0.4     2023-11-07 [1] CRAN (R 4.3.1)
# magrittr                 2.0.3     2022-03-30 [1] CRAN (R 4.3.0)
# Matrix                   1.6-5     2024-01-11 [1] CRAN (R 4.3.3)
# MatrixGenerics           1.14.0    2023-10-26 [1] Bioconductor
# matrixStats              1.4.1     2024-09-08 [1] CRAN (R 4.3.3)
# memoise                  2.0.1     2021-11-26 [1] CRAN (R 4.3.0)
# mime                     0.12      2021-09-28 [1] CRAN (R 4.3.0)
# OrganismDbi              1.44.0    2023-10-26 [1] Bioconductor
# pillar                   1.9.0     2023-03-22 [1] CRAN (R 4.3.0)
# pkgconfig                2.0.3     2019-09-22 [1] CRAN (R 4.3.0)
# png                      0.1-8     2022-11-29 [1] CRAN (R 4.3.0)
# prettyunits              1.2.0     2023-09-24 [1] CRAN (R 4.3.1)
# progress                 1.2.3     2023-12-06 [1] CRAN (R 4.3.1)
# promises                 1.3.0     2024-04-05 [1] CRAN (R 4.3.1)
# R6                       2.5.1     2021-08-19 [1] CRAN (R 4.3.0)
# rappdirs                 0.3.3     2021-01-31 [1] CRAN (R 4.3.0)
# RBGL                     1.78.0    2023-10-26 [1] Bioconductor
# Rcpp                     1.0.13    2024-07-17 [1] CRAN (R 4.3.3)
# RCurl                    1.98-1.16 2024-07-11 [1] CRAN (R 4.3.3)
# restfulr                 0.0.15    2022-06-16 [1] CRAN (R 4.3.0)
# rjson                    0.2.23    2024-09-16 [1] CRAN (R 4.3.3)
# rlang                    1.1.4     2024-06-04 [1] CRAN (R 4.3.3)
# rmarkdown                2.28      2024-08-17 [1] CRAN (R 4.3.3)
# rprojroot                2.0.4     2023-11-05 [1] CRAN (R 4.3.1)
# Rsamtools                2.18.0    2023-10-26 [1] Bioconductor
# RSQLite                  2.3.7     2024-05-27 [1] CRAN (R 4.3.3)
# rstudioapi               0.16.0    2024-03-24 [1] CRAN (R 4.3.1)
# rtracklayer              1.62.0    2023-10-26 [1] Bioconductor
# RUnit                    0.4.33    2024-02-22 [1] CRAN (R 4.3.1)
# S4Arrays                 1.2.1     2024-03-05 [1] Bioconductor 3.18 (R 4.3.2)
# S4Vectors                0.40.2    2023-11-25 [1] Bioconductor 3.18 (R 4.3.2)
# sessioninfo            * 1.2.2     2021-12-06 [1] CRAN (R 4.3.0)
# shiny                    1.9.1     2024-08-01 [1] CRAN (R 4.3.3)
# SparseArray              1.2.4     2024-02-10 [1] Bioconductor 3.18 (R 4.3.2)
# stringdist               0.9.12    2023-11-28 [1] CRAN (R 4.3.1)
# stringi                  1.8.4     2024-05-06 [1] CRAN (R 4.3.1)
# stringr                  1.5.1     2023-11-14 [1] CRAN (R 4.3.1)
# SummarizedExperiment     1.32.0    2023-11-06 [1] Bioconductor
# tibble                   3.2.1     2023-03-20 [1] CRAN (R 4.3.0)
# tidyselect               1.2.1     2024-03-11 [1] CRAN (R 4.3.1)
# utf8                     1.2.4     2023-10-22 [1] CRAN (R 4.3.1)
# vctrs                    0.6.5     2023-12-01 [1] CRAN (R 4.3.1)
# xfun                     0.47      2024-08-17 [1] CRAN (R 4.3.3)
# XML                      3.99-0.17 2024-06-25 [1] CRAN (R 4.3.3)
# xml2                     1.3.6     2023-12-04 [1] CRAN (R 4.3.1)
# xtable                   1.8-4     2019-04-21 [1] CRAN (R 4.3.0)
# XVector                  0.42.0    2023-10-26 [1] Bioconductor
# yaml                     2.3.10    2024-07-26 [1] CRAN (R 4.3.3)
# zlibbioc                 1.48.2    2024-03-19 [1] Bioconductor 3.18 (R 4.3.3)
#
# [1] /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#
# ─────────────────────────────────────────────────────────────────────────────────
