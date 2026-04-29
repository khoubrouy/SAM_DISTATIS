# ============================================================
# Function: myCorPlot
# Purpose: Plot a correlation/covariance matrix using corrplot
#          or corrplot.mixed with optional FPC reordering.
# Notes:
#   - Requires corrplot package
#   - Uses base title() for title/subtitle placement
# ============================================================

myCorPlot <- function(
  data,
  order = NULL,
  full.type = TRUE,
  title = NULL,
  subtitle = NULL,
  title.pos = 2.5,
  subtitle.pos = 2,
  number.cex = 0.5,
  title.col = "black",
  subtitle.col = "black",
  name.color = "steelblue4",
  tl.cex = 0.6,
  adj = 0,
  is.corr = TRUE
) {
  # Reorder colors if needed
  if (!is.null(order) && order == "FPC") {
    mycolors <- name.color
    ord.FPC <- corrMatOrder(data, order = "FPC")
    name.color <- mycolors[ord.FPC]
  }

  if (full.type) {
    corrplot(
      data,
      order = order,
      tl.pos = "lt",
      number.cex = number.cex,
      tl.col = name.color,
      addgrid.col = "grey",
      tl.srt = 90,
      tl.cex = tl.cex,
      is.corr = is.corr,
      mar = c(0, 2, 0.5, 0),
      method = "color"
    )
  } else {
    corrplot.mixed(
      data,
      upper = "color",
      addCoefasPercent = TRUE,
      order = order,
      tl.pos = "lt",
      number.cex = number.cex,
      tl.col = name.color,
      addgrid.col = "grey",
      tl.srt = 90,
      tl.cex = tl.cex,
      is.corr = is.corr,
      mar = c(0, 2, 0.5, 0)
    )
  }

  title(title, line = title.pos, cex.main = 1, adj = adj, col.main = title.col)
  title(subtitle, line = subtitle.pos, cex.main = 0.7, adj = adj, col.main = subtitle.col)
}
