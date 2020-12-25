# ragtag
My personal R project. It currently contains my R markdown template.

This is essentially the set-up used in Chapter 18 in Yihui Xie's book [Rmarkdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/new-formats.html) (with my own CSS)


## Installation

Since this package isn't on CRAN, install this package with devtools.

```r
devtools::install_github("AnirudhHimself/ragtag")
```

To use the theme change the YAML for the Rmarkdown document to include the theme in the output. You could also select the theme "from template" in RStudio.

```YAML
---
title: "Untitled"
output: ragtag::ragtag_html
---

```
