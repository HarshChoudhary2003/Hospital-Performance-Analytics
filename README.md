<div align="center">
  <h1>🏥 Hospital Performance & Patient Analytics</h1>
  <p>
    <strong>A comprehensive data analytics project leveraging Python, SQL, and Power BI to uncover actionable insights into hospital operations, patient demographics, and financial performance.</strong>
  </p>
  
  ![Power BI](https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=Power%20BI&logoColor=black)
  ![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
  ![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
  ![Jupyter](https://img.shields.io/badge/Jupyter-F37626.svg?&style=for-the-badge&logo=Jupyter&logoColor=white)
</div>

<br />

## 📖 Project Overview
The **Hospital Performance & Patient Analytics** project focuses on processing, analyzing, and visualizing healthcare data. The primary objective is to evaluate hospital efficiency, patient demographics, common medical conditions, and financial metrics (billing and insurance). By transforming raw data into interactive dashboards, this project enables data-driven decision-making for healthcare administrators.

## 🎯 Business Problem
Healthcare institutions generate massive amounts of data daily, but often struggle to extract meaningful insights. Key challenges include:
* Understanding the demographic distribution of patients to tailor healthcare services.
* Identifying the most common medical conditions to optimize resource allocation and inventory (medications, beds).
* Analyzing hospital billing and revenue streams across different insurance providers and medical conditions.
* Evaluating admission types (Emergency, Elective, Urgent) to improve patient intake workflows.

## 📊 Dataset Information
The dataset (`healthcare_dataset.csv`) contains rich, multidimensional records of hospital visits. Key attributes include:
* **Patient Demographics:** Age, Gender, Blood Type
* **Medical Details:** Medical Condition, Admission Type, Medication, Test Results
* **Hospital Information:** Hospital Name, Admission/Discharge Dates
* **Financials:** Billing Amount, Insurance Provider

*Note: Data was rigorously cleaned and pre-processed (`clean_healthcare_dataset.csv`) to remove inconsistencies and handle missing values.*

## 🛠️ Tech Stack
* **Python (Pandas, NumPy, Matplotlib, Seaborn):** Data Cleaning, Exploratory Data Analysis (EDA), and Business Insights extraction.
* **SQL (MySQL / PostgreSQL):** Structured querying for basic, intermediate, and advanced analytics.
* **Microsoft Power BI:** Interactive Dashboard creation and data visualization.
* **Jupyter Notebooks:** Interactive coding and documentation environment.

## 🏗️ Project Architecture
1. **Data Ingestion:** Loading raw healthcare data into Python dataframes.
2. **Data Cleaning (`Data_Cleaning.ipynb`):** Handling nulls, formatting data types, and standardizing categories.
3. **Exploratory Data Analysis (`Exploratory_Data_Analysis.ipynb`):** Univariate and bivariate analysis to discover patterns.
4. **SQL Analytics (`basic_analysis.sql` / `advanced_analysis.sql`):** Aggregating metrics like average billing, hospital patient counts, and condition frequency.
5. **Data Visualization (`PowerBI`):** Building a comprehensive dashboard for stakeholder presentations.

## 💻 SQL Analysis
The SQL scripts are categorized by complexity to answer specific business questions:
* **Basic Analysis:** Total patients, average age, billing amounts, and demographic breakdowns (Gender, Blood Type).
* **Intermediate/Advanced Analysis:** Top 10 hospitals by billing and patient count, insurance provider distribution, and average billing by medical condition.

## 🐍 Python EDA
The Jupyter Notebooks in the `Notebooks/` directory perform heavy lifting for data manipulation:
* **`Data_Cleaning.ipynb`**: Prepares the raw data for analysis.
* **`Exploratory_Data_Analysis.ipynb`**: Visualizes distributions of age, billing amounts, and frequency of medical conditions.
* **`Business_Insights.ipynb`**: Correlates different variables to derive strategic recommendations.

## 📸 Dashboard Screenshots
An interactive Power BI dashboard (`Healthcare Analytics Dashboard.pbix`) was created to visualize KPIs at a glance.

![Healthcare Dashboard](Screenshots/Screenshot%202026-06-30%20182322.png)

## 💡 Business Insights
1. **Billing Variations:** Specific medical conditions incur significantly higher average billing amounts, indicating a need for optimized resource planning in those departments.
2. **Patient Demographics:** A distinct age group and gender distribution dominates the patient base, allowing for targeted healthcare campaigns.
3. **Insurance Dominance:** A few key insurance providers cover the majority of the patients. Strategic partnerships with these providers could streamline billing processes.
4. **Hospital Load:** The "Top 10 Hospitals by Patient Count" handle a disproportionately large volume of admissions, highlighting potential bottlenecks in regional healthcare distribution.

## 📌 Recommendations
* **Resource Optimization:** Allocate more staff and medication inventory to departments treating the most common medical conditions identified in the EDA.
* **Financial Strategy:** Negotiate better terms with the top insurance providers to reduce claim rejections and improve cash flow.
* **Operational Efficiency:** Analyze the peak times for 'Emergency' vs. 'Elective' admission types to better schedule hospital staff shifts.

## 📁 Folder Structure
```text
Hospital Performance & Patient Analytics/
│
├── Data/
│   ├── healthcare_dataset.csv
│   └── clean_healthcare_dataset.csv
│
├── Documentation/
│   ├── Business Requirement Document.docx
│   ├── Business_Insights.docx
│   └── Hospital Performance.docx
│
├── Notebooks/
│   ├── Business_Insights.ipynb
│   ├── Data_Cleaning.ipynb
│   └── Exploratory_Data_Analysis.ipynb
│
├── PowerBI/
│   └── Healthcare Analytics Dashboard.pbix
│
├── Presentation/
│   └── Hospital-Performance-and-Patient-Analytics Presentation PDF.pdf
│
├── Screenshots/
│   └── Screenshot 2026-06-30 182322.png
│
├── SQL/
│   ├── basic_analysis.sql
│   ├── intermediate_analysis.sql
│   └── advanced_analysis.sql
│
└── README.md
```

## 🚀 Installation Guide
To run this project locally, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/Hospital-Performance-Analytics.git
   cd Hospital-Performance-Analytics
   ```

2. **Python Environment Setup:**
   Ensure you have Python installed. Install the required libraries:
   ```bash
   pip install pandas numpy matplotlib seaborn jupyter
   ```
   *Run the notebooks by typing `jupyter notebook` in your terminal.*

3. **Database Setup:**
   Import `clean_healthcare_dataset.csv` into your preferred SQL database. Execute the scripts in the `SQL/` folder to run the analyses.

4. **Power BI Dashboard:**
   Download and install [Power BI Desktop](https://powerbi.microsoft.com/desktop/). Open `PowerBI/Healthcare Analytics Dashboard.pbix` to view and interact with the visualizations.

## 🔮 Future Improvements
* **Predictive Modeling:** Implement Machine Learning (e.g., Logistic Regression, Random Forest) to predict patient readmission rates.
* **Real-time Pipeline:** Build an automated ETL pipeline (using Apache Airflow or Azure Data Factory) to ingest hospital data in real-time.
* **Patient Length of Stay (LOS):** Analyze factors contributing to extended hospital stays to reduce costs and free up bed capacity.


---
<p align="center">
  <i>Developed with ❤️ for better Healthcare Analytics.</i>
</p>
