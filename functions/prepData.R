# ============================================================
# Function: prep_data
# Purpose: Preprocess a data matrix by centering/scaling rows
#          and optionally applying MFA-style normalization.
# Output:  Cross-product matrix t(X) %*% X
# ============================================================

prepData <- function(data, center = TRUE, scale = FALSE, norm = TRUE) {
  data <- as.matrix(data)

  data_prep <- scale(data, center = center, scale = scale)

  if (norm) {
    data_prep <- data_prep / sqrt(nrow(data_prep))
  }

  dataTdata <- t(data_prep) %*% data_prep

  return(dataTdata)
}
