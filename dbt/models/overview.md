{% docs __overview__ %}
# 🏠 Berlin Airbnb Analytics Pipeline

**End-to-End Data Engineering Project | Snowflake • dbt • Dagster • Preset**

---

## 📌 Project Overview

This project builds a modern, production-style data pipeline to ingest and analyze **Airbnb listing data from Berlin** in order to answer a fun but data-driven question:

> **Does a full moon actually influence customer ratings? 🌕**

The pipeline extracts raw listing data, loads it into **Snowflake**, transforms it using **dbt**, orchestrates workflows with **Dagster**, and delivers insights through an interactive dashboard built in **Preset (Apache Superset)**.
The entire project is version-controlled and deployed using **GitHub CI/CD** practices.

---

## 🧱 Architecture

```
                ┌──────────────┐
                │ Raw Airbnb   │
                │ Berlin Data  │
                └──────┬───────┘
                       │ Ingestion
                       ▼
                ┌──────────────┐
                │  Snowflake   │  ← Raw / Staging Layers
                │  Data Lake   │
                └──────┬───────┘
                       │ dbt Models
                       ▼
                ┌──────────────┐
                │ Transformed  │  ← Analytics Layer (Marts)
                │   Data       │
                └──────┬───────┘
                       │ Orchestration
                       ▼
                ┌──────────────┐
                │   Dagster    │
                │  Pipelines   │
                └──────┬───────┘
                       │
                       ▼
                ┌──────────────┐
                │   Preset     │
                │ Dashboard    │
                └──────────────┘
```

---

## 🎯 Objectives

* Build a **scalable ELT pipeline** using modern data stack tools.
* Model Airbnb listing data using **analytics engineering best practices**.
* Explore correlations between:

  * 🌕 **Full moon dates**
  * ⭐ **Customer review scores**
* Provide operational insights such as:

  * Total listings over time
  * Rating distribution trends
  * Temporal behavior patterns

---

## 🛠️ Tech Stack

| Layer           | Tool             | Purpose                               |
| --------------- | ---------------- | ------------------------------------- |
| Data Warehouse  | **Snowflake**    | Central analytical storage            |
| Transformation  | **dbt**          | Data modeling, testing, documentation |
| Orchestration   | **Dagster**      | Pipeline scheduling and observability |
| Visualization   | **Preset**       | Dashboarding & analytics              |
| Version Control | **GitHub**       | Source control + CI/CD                |
| Language        | **SQL / Python** | Transformations & orchestration       |

---

## 🔄 Data Pipeline Flow

### 1️⃣ Ingestion

Raw Airbnb Berlin dataset is loaded into **Snowflake** landing tables.

### 2️⃣ Transformation (dbt)

dbt performs:

* Data cleaning & normalization
* Surrogate key creation
* Time-based modeling
* Integration with lunar calendar dataset
* Data quality testing

### 3️⃣ Orchestration (Dagster)

Dagster manages:

* Job scheduling
* Dependency management
* Observability & logging
* Reproducible runs

### 4️⃣ Analytics Layer

Curated marts include:

* `fct_listings`
* `fct_reviews`
* `dim_date`
* `dim_listing`
* `fct_moon_phase_analysis`

### 5️⃣ Visualization (Preset)

Preset dashboard enables:

* Full Moon vs Rating comparison
* Listing growth trends
* Rating volatility analysis
* Time-series exploration

---

## 🌕 Analytical Use Case

We enrich listing review timestamps with **astronomical moon phase data** to evaluate whether:

* Guests leave higher/lower ratings during full moons
* Behavioral anomalies exist in hospitality data
* Seasonal + lunar signals interact with review sentiment

This blends **data engineering + exploratory analytics** into a reproducible pipeline.

---

## ✅ CI/CD (GitHub Actions)

The project includes automated workflows that:

* Run `dbt build` on PRs
* Execute tests for data quality

---

## 📊 Example Dashboard Metrics

* ⭐ Average Rating vs Moon Phase
* 📅 Listings by Month
* 🌕 Full Moon Review Distribution
* 📈 Review Volume Trends
* 🏙️ Active Listings in Berlin

---

## 🧪 Data Quality & Testing

dbt tests enforce:

* Not-null constraints
* Unique listing IDs
* Referential integrity
* Accepted rating ranges
* Temporal consistency checks

---

## 📜 License

This project is licensed under the MIT License.

---

## 👤 Jah-Wilson Teeba

**Data Engineering Project**
Built to demonstrate modern ELT architecture, orchestration, and analytics engineering practices using the contemporary data stack.

---

> *Because even data engineers sometimes wonder if the moon is messing with the metrics.* 🌕
{% enddocs %}