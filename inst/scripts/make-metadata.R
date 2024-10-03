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

# ─ Session info ───────────────────────────────────────────────────────────────
# version  R version 4.4.1 (2024-06-14)
# os       macOS 15.0
# system   aarch64, darwin20
# ui       RStudio
# language (EN)
# collate  en_US.UTF-8
# ctype    en_US.UTF-8
# tz       America/New_York
# date     2024-10-03
# rstudio  2024.09.0+375 Cranberry Hibiscus (desktop)
# pandoc   3.2 @ /Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/aarch64/ (via rmarkdown)
#
# ─ Packages ───────────────────────────────────────────────────────────────────
# package              * version date (UTC) lib source
# AnnotationDbi          1.67.0  2024-05-04 [1] Bioconductor 3.20 (R 4.4.0)
# AnnotationHub        * 3.13.3  2024-08-19 [1] Bioconductor 3.20 (R 4.4.1)
# Biobase                2.65.1  2024-08-28 [1] Bioconductor 3.20 (R 4.4.1)
# BiocFileCache        * 2.13.0  2024-05-04 [1] Bioconductor 3.20 (R 4.4.0)
# BiocGenerics         * 0.51.2  2024-09-27 [1] Bioconductor 3.20 (R 4.4.1)
# BiocManager            1.30.25 2024-08-28 [1] CRAN (R 4.4.1)
# BiocVersion            3.20.0  2024-05-04 [1] Bioconductor 3.20 (R 4.4.0)
# Biostrings             2.73.2  2024-09-26 [1] Bioconductor 3.20 (R 4.4.1)
# bit                    4.5.0   2024-09-20 [1] CRAN (R 4.4.1)
# bit64                  4.5.2   2024-09-22 [1] CRAN (R 4.4.1)
# blob                   1.2.4   2023-03-17 [1] CRAN (R 4.4.0)
# cachem                 1.1.0   2024-05-16 [1] CRAN (R 4.4.0)
# cli                    3.6.3   2024-06-21 [1] CRAN (R 4.4.0)
# crayon                 1.5.3   2024-06-20 [1] CRAN (R 4.4.0)
# curl                   5.2.3   2024-09-20 [1] CRAN (R 4.4.1)
# DBI                    1.2.3   2024-06-02 [1] CRAN (R 4.4.0)
# dbplyr               * 2.5.0   2024-03-19 [1] CRAN (R 4.4.0)
# digest                 0.6.37  2024-08-19 [1] CRAN (R 4.4.1)
# dplyr                  1.1.4   2023-11-17 [1] CRAN (R 4.4.0)
# evaluate               1.0.0   2024-09-17 [1] CRAN (R 4.4.1)
# ExperimentHub        * 2.13.1  2024-07-31 [1] Bioconductor 3.20 (R 4.4.1)
# fansi                  1.0.6   2023-12-08 [1] CRAN (R 4.4.0)
# fastmap                1.2.0   2024-05-15 [1] CRAN (R 4.4.0)
# filelock               1.0.3   2023-12-11 [1] CRAN (R 4.4.0)
# generics               0.1.3   2022-07-05 [1] CRAN (R 4.4.0)
# GenomeInfoDb           1.41.1  2024-06-12 [1] Bioconductor 3.20 (R 4.4.1)
# GenomeInfoDbData       1.2.13  2024-10-03 [1] Bioconductor
# glue                   1.8.0   2024-09-30 [1] CRAN (R 4.4.1)
# htmltools              0.5.8.1 2024-04-04 [1] CRAN (R 4.4.0)
# httr                   1.4.7   2023-08-15 [1] CRAN (R 4.4.0)
# humanHippocampus2024 * 0.99.0  2024-10-03 [1] Bioconductor
# IRanges                2.39.2  2024-07-17 [1] Bioconductor 3.20 (R 4.4.1)
# jsonlite               1.8.9   2024-09-20 [1] CRAN (R 4.4.1)
# KEGGREST               1.45.1  2024-06-18 [1] Bioconductor 3.20 (R 4.4.1)
# knitr                  1.48    2024-07-07 [1] CRAN (R 4.4.0)
# lifecycle              1.0.4   2023-11-07 [1] CRAN (R 4.4.0)
# magrittr               2.0.3   2022-03-30 [1] CRAN (R 4.4.0)
# memoise                2.0.1   2021-11-26 [1] CRAN (R 4.4.0)
# pillar                 1.9.0   2023-03-22 [1] CRAN (R 4.4.0)
# pkgconfig              2.0.3   2019-09-22 [1] CRAN (R 4.4.0)
# png                    0.1-8   2022-11-29 [1] CRAN (R 4.4.0)
# R6                     2.5.1   2021-08-19 [1] CRAN (R 4.4.0)
# rappdirs               0.3.3   2021-01-31 [1] CRAN (R 4.4.0)
# rlang                  1.1.4   2024-06-04 [1] CRAN (R 4.4.0)
# rmarkdown              2.28    2024-08-17 [1] CRAN (R 4.4.0)
# RSQLite                2.3.7   2024-05-27 [1] CRAN (R 4.4.0)
# S4Vectors              0.43.2  2024-07-17 [1] Bioconductor 3.20 (R 4.4.1)
# sessioninfo          * 1.2.2   2021-12-06 [1] CRAN (R 4.4.0)
# tibble                 3.2.1   2023-03-20 [1] CRAN (R 4.4.0)
# tidyselect             1.2.1   2024-03-11 [1] CRAN (R 4.4.0)
# UCSC.utils             1.1.0   2024-05-04 [1] Bioconductor 3.20 (R 4.4.0)
# utf8                   1.2.4   2023-10-22 [1] CRAN (R 4.4.0)
# vctrs                  0.6.5   2023-12-01 [1] CRAN (R 4.4.0)
# xfun                   0.47    2024-08-17 [1] CRAN (R 4.4.0)
# XVector                0.45.0  2024-05-04 [1] Bioconductor 3.20 (R 4.4.0)
# yaml                   2.3.10  2024-07-26 [1] CRAN (R 4.4.0)
# zlibbioc               1.51.1  2024-06-05 [1] Bioconductor 3.20 (R 4.4.0)
#
# [1] /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/library
#
# ──────────────────────────────────────────────────────────────────────────────
