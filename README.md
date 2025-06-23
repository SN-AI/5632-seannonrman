# MSCS 5632 Final Project: StockAnomaly Project
### Authored by Sean Norman
#### April 2025

## Executive Summary
This project explores anomalies in stock market data using advanced machine learning techniques. Monthly stock price and volume data from 2019 through early 2025 are analyzed for exploratory data analysis (EDA), model training, and anomaly detection. The models are tested on subsequent data (January–March 2025) to evaluate predictive performance. The goal is to identify unusual patterns or outliers in stock behavior, which may inform investment strategies or risk management decisions.

**Data Source Reference**:
*   Yahoo Finance. (2025). *Historical Stock Data*. Retrieved from https://finance.yahoo.com/


### Report Summary (Notebook is the Report)
All code cells in the notebook include comments explaining the logic and intent behind each step. At the end of the notebook, a summary discusses the methodology, key findings, lessons learned, and recommendations for future work.

### Learning & Algorithms Utilized
This analysis employs the following modeling and detection techniques:
- Isolation Forest (Anomaly Detection)
- Local Outlier Factor

## About this repository
This repository contains the following materials:

```
├── data/
├── .venv/                  # Python virtual environment (created by setup scripts)
├── anomaly-notebook.html   # Main Jupyter notebook as HTML for report viewing
├── qqqanomaly.ipynb        # Main Jupyter notebook for analysis
├── README.md               # This file
├── requirements.txt        # List of Python package dependencies
├── setup.bat               # Setup script for Windows (auto-generated, untested)
├── setup.sh                # Setup script for macOS/Linux
```

### `data/` folder
Contains the raw stock data used in the analysis, as referenced in the notebook.

### `qqqanomaly.ipynb`
The primary Jupyter notebook for this project, covering data loading, cleaning, EDA, modeling, anomaly detection, and results. Outputs generated during analysis are stored in the output directory.

### Environment Setup Files
*   **`requirements.txt`**: Lists all required Python packages and versions.
*   **`setup.sh`**: Shell script for macOS/Linux to automate environment setup.
*   **`setup.bat`**: Batch script for Windows to automate environment setup (not tested).

## Disclosure & Responsible Use
All data used in this project is sourced from publicly available datasets and is considered open data. The analysis and code are original and intended for educational purposes only. This project is part of coursework for a machine learning class and should not be copied by other students. It is shared solely to fulfill project requirements.