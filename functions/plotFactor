# ============================================================
# Function: plotFactor
# Purpose: Plot row or column scores on a selected pair
#          of components using the custom factor map builder.
# Notes:
#   - Requires myCreateFactorMap() to be sourced first
#   - Requires createxyLabels.gen() from package/toolchain
# ============================================================

plotFactor <- function(
  Fj,
  Fi = NULL,
  lambda = NULL,
  tau = NULL,
  x = 1,
  y = 2,
  title = NULL,
  subtitle = NULL,
  cex.point = 1,
  cex.text = 3,
  pch = 19,
  points.color,
  title.color = "black",
  subtitle.color = "black",
  labels.color = "black",
  axes.color = "black",
  constraints = NULL,
  points.alpha = 0.3,
  labels.alpha = 1,
  axes.alpha = 0.6,
  title.size = 10,
  subtitle.size = 9,
  axis.label.size = 8,
  title.alignment = 0,
  subtitle.alignment = 0,
  display.labels = TRUE,
  constraints.factor = 1.1
) {
  if (!is.null(Fi)) {
    factor <- Fi
  } else {
    factor <- Fj
  }

  if (!is.null(lambda)) {
    map_labels <- createxyLabels.gen(
      x_axis = x,
      y_axis = y,
      lambda = lambda,
      tau = tau,
      axisName = "Component "
    )
  } else {
    map_labels <- NULL
  }

  map <- myCreateFactorMap(
    factor,
    axis1 = x,
    axis2 = y,
    display.labels = display.labels,
    col.points = points.color,
    col.labels = points.color,
    alpha.points = points.alpha,
    alpha.labels = labels.alpha,
    alpha.axes = axes.alpha,
    title = title,
    col.background = NULL,
    col.axes = axes.color,
    cex = cex.point,
    text.cex = cex.text,
    pch = pch,
    segment.size = 0.4,
    constraints.factor = constraints.factor,
    constraints = constraints
  )

  aggmap <- map$zeMap_background +
    map$zeMap_dots +
    map$zeMap_text +
    map_labels +
    ggplot2::labs(title = title, subtitle = subtitle) +
    ggplot2::theme(
      plot.title = ggplot2::element_text(
        face = "bold",
        size = title.size,
        color = title.color,
        hjust = title.alignment
      ),
      plot.subtitle = ggplot2::element_text(
        size = subtitle.size,
        face = "bold",
        color = subtitle.color,
        hjust = subtitle.alignment
      ),
      axis.title.x = ggplot2::element_text(color = labels.color, size = axis.label.size),
      axis.title.y = ggplot2::element_text(color = labels.color, size = axis.label.size)
    )

  return(list(aggmap, map$constraints))
}
