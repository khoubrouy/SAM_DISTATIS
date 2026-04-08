# ============================================================
# Function: prep_data
# Purpose: Preprocess a data matrix by centering/scaling rows
#          and optionally applying MFA-style normalization.
# Output:  Cross-product matrix t(X) %*% X
# ============================================================

prepData <- function(data, center = TRUE, scale = FALSE, norm = TRUE) {
  data <- as.matrix(data)

  dataPreProc <- scale(data, center = center, scale = scale)

  if (norm) {
    dataPreProc <- dataPreProc / sqrt(nrow(dataPreProc))
  }

  dataTdata <- t(dataPreProc) %*% dataPreProc

  return(dataTdata)
}
