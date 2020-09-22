#' Personal Rmd Temlate. It only converts to HTML right now.
#'
#' It essentially uses the base rmarkdown html_document function
#' but adds in additional CSS and and a footer template file.
#' It essentially uses the base rmarkdown html_document function,
#' but adds in additional CSS and and a footer template file.
#' I haven't added much to this footer template so it's more of a
#' skeleton for later.
#' @import rmarkdown
#' @param number_sections Should sections be numbered?
#' @param ... additional arguments sent to \@code{html_document}
#' @export
#'
ragtag_html = function(number_sections = FALSE, ...) {

  # locations of resource files in the package
  pkg_resource = function(...) {
    system.file(..., package = "ragtag")
  }

  css    = pkg_resource("rmarkdown/resources/styles.css")

  # call the base html_document function
  rmarkdown::html_document(
    toc = TRUE,
    toc_float = TRUE,
    toc_depth = 2,
    toc_collapsed = FALSE,
    df_print = "paged",
    theme = "lumen",
    code_folding = "hide",
    css = css,
    number_sections = number_sections,
    includes = rmarkdown::includes(after_body = footer),
    ...
  )
}
