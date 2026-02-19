#' Nordic Microbes ggplot2 theme
#'
#' Base theme aligned with Nordic Microbes visual style:
#' - Rounded, geometric feel
#' - Clean background with subtle grid
#' - Typography: Causten Round (body) + Gigalypse (titles)
#'
#' Fonts must be installed on the system to render correctly.
#'
#' @param base_size Base font size.
#' @param base_family Body font family (default: "Causten Round").
#' @param title_family Title font family (default: "Causten Round").
#' @param grid Which gridlines to show: "y" (default), "xy", "none".
#' @param strip_placement Facet strip placement: "outside" (default) or "inside".
#' @param panel_border Draw a panel border (default FALSE).
#'
#' @return A ggplot2 theme object.
#' @export
theme_normic <- function(
  base_size = 12,
  family = "Causten Round",
  grid = c("y", "xy", "none"),
  strip_placement = c("outside", "inside"),
  panel_border = FALSE
) {
  grid <- match.arg(grid)
  strip_placement <- match.arg(strip_placement)

  # Neutral, publication-friendly defaults (not the style-guide colors)
  col_text <- "#2B2B2B"
  col_ticks <- "#CFCFCF"
  col_grid <- "#E9E9E9"
  col_strip <- "#F6F6F6"
  col_border <- "#D9D9D9"

  ggplot2::theme_minimal(
    base_size = base_size
  ) %+replace%
    ggplot2::theme(
      plot.title = ggplot2::element_text(
        family = family,
        face = "plain",
        size = base_size * 1.6,
        colour = col_text,
        margin = ggplot2::margin(b = base_size * 0.6)
      ),
      plot.subtitle = ggplot2::element_text(
        family = family,
        size = base_size * 1.05,
        colour = col_text,
        margin = ggplot2::margin(b = base_size * 0.8)
      ),
      plot.caption = ggplot2::element_text(
        family = family,
        size = base_size * 0.85,
        colour = col_text,
        hjust = 0,
        margin = ggplot2::margin(t = base_size * 0.8)
      ),

      text = ggplot2::element_text(family = family, colour = col_text),
      axis.title = ggplot2::element_text(
        family = family,
        face = "bold",
        colour = col_text
      ),
      axis.text = ggplot2::element_text(family = family, colour = col_text),
      axis.ticks = ggplot2::element_line(
        colour = col_ticks,
        linewidth = 0.4
      ),

      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(
        colour = col_grid,
        linewidth = 0.4
      ),

      panel.background = ggplot2::element_rect(fill = "white", colour = NA),
      plot.background = ggplot2::element_rect(fill = "white", colour = NA),

      panel.border = if (isTRUE(panel_border)) {
        ggplot2::element_rect(fill = NA, colour = col_border, linewidth = 0.6)
      } else {
        ggplot2::element_blank()
      },

      legend.title = ggplot2::element_text(family = family, face = "bold"),
      legend.key = ggplot2::element_rect(fill = "white", colour = NA),
      legend.background = ggplot2::element_rect(fill = "white", colour = NA),

      strip.background = ggplot2::element_rect(fill = col_strip, colour = NA),
      strip.text = ggplot2::element_text(
        family = family,
        face = "bold",
        colour = col_text
      ),
      strip.placement = strip_placement,

      plot.margin = ggplot2::margin(12, 12, 12, 12)
    ) |>
    (function(th) {
      if (grid == "xy") {
        th +
          ggplot2::theme(
            panel.grid.major.x = ggplot2::element_line(
              colour = col_grid,
              linewidth = 0.35
            )
          )
      } else if (grid == "none") {
        th + ggplot2::theme(panel.grid.major = ggplot2::element_blank())
      } else {
        th
      }
    })()
}
