# Customer Behavior Analysis (RFM Model)

This project performs customer segmentation using the RFM (Recency, Frequency, Monetary) model to analyze purchasing behavior.

Data was queried using **SQL in BigQuery**, and visualized in **R using ggplot2**. The results help identify loyal, at-risk, and high-value customers to inform marketing and retention strategies.

---

## 📁 Project Structure

| File/Folder                  | Description |
|-----------------------------|-------------|
| `rfm_summary.csv`           | RFM data exported from BigQuery |
| `rfm_analysis.Rmd`          | R Markdown file for loading, segmenting, and visualizing the RFM dataset |
| `rfm_analysis.html`         | Rendered HTML report with plots and key takeaways |
| `plots/`                    | Folder containing exported visualizations |
| `sql/`                      | SQL queries used to generate the RFM dataset |
| `README.md`                 | Project overview and structure |

---

## 📊 Visualizations

- 📈 **Recency Segment Bar Chart**
- 📉 **Monetary Segment Bar Chart**
- 🔥 **Frequency × Monetary Segment Heatmap**

---

## 🧠 Key Insights

- The majority of customers fall into the **Mid-Value, Medium-Frequency** category.
- A substantial group is **High-Value but Churn Risk**, indicating room for retention outreach.
- The heatmap reveals several **high-potential customer clusters** worth targeting.

---

## 🛠 Tools Used

- **BigQuery (SQL)** – RFM metric aggregation
- **R (tidyverse, ggplot2)** – Analysis and visualization
- **Git/GitHub** – Version control and collaboration
