
<!-- README.md is generated from README.Rmd. Please edit that file -->

# covRflow

<!-- badges: start -->
[![R-CMD-check](https://github.com/yasche/covRflow/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/yasche/covRflow/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of covRflow is to …

## Installation

You can install the development version of covRflow from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("yasche/covRflow")
#> 
#> ✔ Updated metadata database: 7.49 MB in 10 files.
#> 
#> ℹ Updating metadata database
#> ✔ Updating metadata database ... done
#> 
#> 
#> → Will install 33 packages.
#> → Will update 1 package.
#> → Will download 33 CRAN packages (41.34 MB).
#> → Will download 1 package with unknown size.
#> + askpass                 1.2.1      🔧 ⬇ (25.12 kB)
#> + bit                     4.6.0      🔧 ⬇ (730.79 kB)
#> + bit64                   4.6.0-1    🔧 ⬇ (581.86 kB)
#> + cli                     3.6.5      🔧 ⬇ (1.47 MB)
#> + clipr                   0.8.0       ⬇ (51.91 kB)
#> + covRflow   0.0.0.9000 → 0.0.0.9000 👷🏼‍♂️🔧 ⬇ (GitHub: b3d7c8d)
#> + crayon                  1.5.3       ⬇ (164.91 kB)
#> + curl                    6.4.0      🔧 ⬇ (1.89 MB)
#> + dplyr                   1.1.4      🔧 ⬇ (1.61 MB)
#> + generics                0.1.4       ⬇ (82.60 kB)
#> + glue                    1.8.0      🔧 ⬇ (175.14 kB)
#> + hms                     1.1.3       ⬇ (100.51 kB)
#> + httr2                   1.2.0       ⬇ (787.38 kB)
#> + lifecycle               1.0.4       ⬇ (125.64 kB)
#> + magrittr                2.0.3      🔧 ⬇ (234.68 kB)
#> + openssl                 2.3.3      🔧 ⬇ (3.89 MB)
#> + pillar                  1.11.0      ⬇ (662.06 kB)
#> + pkgconfig               2.0.3       ⬇ (18.47 kB)
#> + purrr                   1.1.0      🔧 ⬇ (585.88 kB)
#> + R6                      2.6.1       ⬇ (87.28 kB)
#> + rappdirs                0.3.3      🔧 ⬇ (48.63 kB)
#> + readr                   2.1.5      🔧 ⬇ (1.99 MB)
#> + rlang                   1.1.6      🔧 ⬇ (1.91 MB)
#> + stringi                 1.8.7      🔧 ⬇ (14.79 MB)
#> + stringr                 1.5.1       ⬇ (314.08 kB)
#> + sys                     3.4.3      🔧 ⬇ (51.87 kB)
#> + tibble                  3.3.0      🔧 ⬇ (692.99 kB)
#> + tidyr                   1.3.1      🔧 ⬇ (1.32 MB)
#> + tidyselect              1.2.1       ⬇ (226.89 kB)
#> + tzdb                    0.5.0      🔧 ⬇ (1.28 MB)
#> + utf8                    1.2.6      🔧 ⬇ (209.74 kB)
#> + vctrs                   0.6.5      🔧 ⬇ (1.89 MB)
#> + vroom                   1.6.5      🔧 ⬇ (3.12 MB)
#> + withr                   3.0.2       ⬇ (224.91 kB)
#> ℹ Getting 33 pkgs (41.34 MB) and 1 pkg with unknown size
#> ✔ Got R6 2.6.1 (aarch64-apple-darwin20) (87.28 kB)
#> ✔ Got bit64 4.6.0-1 (aarch64-apple-darwin20) (581.86 kB)
#> ✔ Got askpass 1.2.1 (aarch64-apple-darwin20) (25.12 kB)
#> ✔ Got clipr 0.8.0 (aarch64-apple-darwin20) (51.91 kB)
#> ✔ Got cli 3.6.5 (aarch64-apple-darwin20) (1.47 MB)
#> ✔ Got glue 1.8.0 (aarch64-apple-darwin20) (175.14 kB)
#> ✔ Got bit 4.6.0 (aarch64-apple-darwin20) (730.79 kB)
#> ✔ Got stringr 1.5.1 (aarch64-apple-darwin20) (314.08 kB)
#> ✔ Got lifecycle 1.0.4 (aarch64-apple-darwin20) (125.64 kB)
#> ✔ Got rappdirs 0.3.3 (aarch64-apple-darwin20) (48.63 kB)
#> ✔ Got sys 3.4.3 (aarch64-apple-darwin20) (51.87 kB)
#> ✔ Got covRflow 0.0.0.9000 (source) (19.56 kB)
#> ✔ Got tzdb 0.5.0 (aarch64-apple-darwin20) (1.28 MB)
#> ✔ Got crayon 1.5.3 (aarch64-apple-darwin20) (164.91 kB)
#> ✔ Got magrittr 2.0.3 (aarch64-apple-darwin20) (234.68 kB)
#> ✔ Got pkgconfig 2.0.3 (aarch64-apple-darwin20) (18.47 kB)
#> ✔ Got utf8 1.2.6 (aarch64-apple-darwin20) (209.74 kB)
#> ✔ Got rlang 1.1.6 (aarch64-apple-darwin20) (1.91 MB)
#> ✔ Got openssl 2.3.3 (aarch64-apple-darwin20) (3.89 MB)
#> ✔ Got generics 0.1.4 (aarch64-apple-darwin20) (82.60 kB)
#> ✔ Got vroom 1.6.5 (aarch64-apple-darwin20) (3.12 MB)
#> ✔ Got tidyr 1.3.1 (aarch64-apple-darwin20) (1.32 MB)
#> ✔ Got purrr 1.1.0 (aarch64-apple-darwin20) (585.88 kB)
#> ✔ Got withr 3.0.2 (aarch64-apple-darwin20) (224.91 kB)
#> ✔ Got hms 1.1.3 (aarch64-apple-darwin20) (100.51 kB)
#> ✔ Got httr2 1.2.0 (aarch64-apple-darwin20) (787.38 kB)
#> ✔ Got dplyr 1.1.4 (aarch64-apple-darwin20) (1.61 MB)
#> ✔ Got pillar 1.11.0 (aarch64-apple-darwin20) (662.06 kB)
#> ✔ Got tidyselect 1.2.1 (aarch64-apple-darwin20) (226.89 kB)
#> ✔ Got vctrs 0.6.5 (aarch64-apple-darwin20) (1.89 MB)
#> ✔ Got curl 6.4.0 (aarch64-apple-darwin20) (1.21 MB)
#> ✔ Got readr 2.1.5 (aarch64-apple-darwin20) (1.99 MB)
#> ✔ Got tibble 3.3.0 (aarch64-apple-darwin20) (692.99 kB)
#> ✔ Got stringi 1.8.7 (aarch64-apple-darwin20) (14.79 MB)
#> ✔ Installed R6 2.6.1  (87ms)
#> ✔ Installed askpass 1.2.1  (94ms)
#> ✔ Installed bit64 4.6.0-1  (103ms)
#> ✔ Installed bit 4.6.0  (108ms)
#> ✔ Installed cli 3.6.5  (136ms)
#> ✔ Installed clipr 0.8.0  (139ms)
#> ✔ Installed crayon 1.5.3  (141ms)
#> ✔ Installed curl 6.4.0  (145ms)
#> ✔ Installed dplyr 1.1.4  (168ms)
#> ✔ Installed generics 0.1.4  (173ms)
#> ✔ Installed glue 1.8.0  (49ms)
#> ✔ Installed hms 1.1.3  (34ms)
#> ✔ Installed httr2 1.2.0  (59ms)
#> ✔ Installed lifecycle 1.0.4  (65ms)
#> ✔ Installed magrittr 2.0.3  (36ms)
#> ✔ Installed openssl 2.3.3  (39ms)
#> ✔ Installed pillar 1.11.0  (35ms)
#> ✔ Installed pkgconfig 2.0.3  (32ms)
#> ✔ Installed purrr 1.1.0  (33ms)
#> ✔ Installed rappdirs 0.3.3  (35ms)
#> ✔ Installed readr 2.1.5  (63ms)
#> ✔ Installed rlang 1.1.6  (69ms)
#> ✔ Installed stringr 1.5.1  (18ms)
#> ✔ Installed stringi 1.8.7  (75ms)
#> ✔ Installed sys 3.4.3  (35ms)
#> ✔ Installed tibble 3.3.0  (36ms)
#> ✔ Installed tidyr 1.3.1  (37ms)
#> ✔ Installed tidyselect 1.2.1  (34ms)
#> ✔ Installed tzdb 0.5.0  (61ms)
#> ✔ Installed utf8 1.2.6  (66ms)
#> ✔ Installed vctrs 0.6.5  (40ms)
#> ✔ Installed vroom 1.6.5  (43ms)
#> ✔ Installed withr 3.0.2  (30ms)
#> ℹ Packaging covRflow 0.0.0.9000
#> ✔ Packaged covRflow 0.0.0.9000 (398ms)
#> ℹ Building covRflow 0.0.0.9000
#> ✔ Built covRflow 0.0.0.9000 (921ms)
#> ✔ Installed covRflow 0.0.0.9000 (github::yasche/covRflow@b3d7c8d) (18ms)
#> ✔ 1 pkg + 33 deps: upd 1, added 33, dld 34 (NA B) [16.3s]
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(covRflow)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
