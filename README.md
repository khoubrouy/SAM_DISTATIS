# SAM DISTATIS Analysis

This repository contains the code and data used to perform **DISTATIS analysis** on SAM (Survey of Autobiographical Memory) datasets, including:

- Full SAM datasets
- Mini SAM datasets
- Aging datasets (young vs. old comparisons)

The workflow includes preprocessing, DISTATIS analysis, and visualization of the analysis results.

---

## 📂 Repository Structure

```text
project/
├── data/                # .rda files (data cubes)
├── functions/           # Custom R functions used in analysis
├── figures/             # Pre-generated plots (PNG format)
├── quartos/             # Quarto (.qmd) analysis files
└── README.md
```

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/khoubrouy/SAM_DISTATIS.git
```

### 2. Install required packages

In R:

```r
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
if (!require("remotes")) install.packages("remotes")

remotes::install_github("HerveAbdi/data4PCCAR")
remotes::install_github("HerveAbdi/PTCA4CATA")

library(data4PCCAR)
library(PTCA4CATA)
```

### 3. Run the analysis

Open and run one of the Quarto files:

- `quartos/distatisSAM.qmd`
- `quartos/distatisMiniSAM.qmd`
- `quartos/distatisAgingSAM.qmd`

---

## 📊 Data

To preserve confidentiality, raw datasets are not shared.

Instead, we provide **precomputed data cubes (`.rda`)**, which contain cross-product matrices \((X^T X)\) that have been centered and normalized.

---

## ⚙️ Methodology

The analysis pipeline includes:

1. Data preprocessing (centering + MFA normalization)
2. Construction of 3D data cubes
3. DISTATIS
   - RV analysis
   - Compromise analysis

---

## 📈 Outputs

The repository generates:

- Heatmaps
- Scree plots
- Factor maps
- Partial factor score plots
- Contribution plots

---

## 📄 Citation

If you use this code or data, please cite:

[Abdi et al. (2012)](https://doi.org/10.1002/wics.198)

---

## 👥 Authors

- Soudeh Khoubrouy
- Ryan C. Yeung
- Carina L. Fan
- Divya Mistry
- Ju-Chi Yu
- Aida Eslami
- Hervé Abdi
- Brian Levine

---

## 📬 Contact

Soudeh Khoubrouy, PhD  
California State University  
[skhoubrouy@csusms.edu](mailto:skhoubrouy@csusms.edu)

---

## ⚠️ Notes

- Some functions are adapted from existing packages with minor modifications.
- Results may vary depending on dataset versions and preprocessing choices.

---

## ⭐ Acknowledgment

This work builds upon the DISTATIS framework and related tools developed by Hervé Abdi and collaborators.
# SAM_DISTATIS
