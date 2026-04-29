if (!require("remotes")) install.packages("remotes")

required_packages <- c(
  "prettyGraphs", "DistatisR", "gplots", "ggrepel",
  "ggplot2", "corrplot", "gridExtra", "ggplotify", "grid", "rgl"
)

for (pkg in required_packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg)
    library(pkg, character.only = TRUE)
  }
}

# Install non-CRAN packages

if (!require("data4PCCAR")) remotes::install_github("HerveAbdi/data4PCCAR")
if (!require("PTCA4CATA")) remotes::install_github("HerveAbdi/PTCA4CATA")

library(data4PCCAR)
library(PTCA4CATA)