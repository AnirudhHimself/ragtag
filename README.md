# ragtag
My personal R project to organize things like an R markdown template.

For an explanation of how to create your own Rmarkdown html template in R, I'd recommend taking a look at Chapter 18 in Yihui Xie's book [Rmarkdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/new-formats.html)

In the future, I'd like to store some helper functions that I find myself routinely using and also a GGplot theme that has the appearance set-up just the way I want. Though, I'm pretty happy with just using `theme_set(theme_minimal())` for now. I also really like the typography focused ggplot themes in the [`hrbrthemes`](https://github.com/hrbrmstr/hrbrthemes) package. 


## Installation

Since this package isn't on CRAN, install this package with devtools. Type:

```r
devtools::install_github("AnirudhHimself/ragtag")
```

To use the theme change the YAML for the Rmarkdown document to include the theme in the output. It also shows up as a template in Rstudio.

```YAML
---
title: "Untitled"
output: ragtag::ragtag_html
---

```
