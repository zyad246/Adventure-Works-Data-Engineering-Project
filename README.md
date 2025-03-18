# Adventure Works Data Engineering Project - Azure Implementation

## Overview  
This project follows the **Medallion Architecture (Bronze, Silver, Gold)** to ingest, transform, and analyze the **Adventure Works dataset** using:  
- **Azure Data Factory**
- **Azure Data Lake**
- **Azure Databricks**
- **Azure Synapse Analytics**

Each phase serves a distinct purpose:  
- **Bronze Layer** → Raw data ingestion  
- **Silver Layer** → Data transformation & cleansing  
- **Gold Layer** → Data aggregation & analytics  

---

## 🚀 **Bronze Layer: Raw Data Ingestion**  
### 🎯 **Objective**  
Extract data from **GitHub API**, ingest it into **Azure Data Lake (Bronze container)**, and create an **ETL pipeline** in **Azure Data Factory (ADF)**.

### 🛠 **Implementation Steps**  
#### 🔹 Extract Data from GitHub API  
✅ Used **HTTP Linked Service** to fetch raw dataset from the **GitHub repository**.  
✅ Created a **Lookup Activity** in **ADF** to fetch file details dynamically.   

#### 🔹 Ingest Data into Azure Data Lake  
✅ Used **ForEach Activity** in ADF to iterate over files and load them into **Bronze container**.  
✅ Created a **dynamic dataset** in ADF using parameters for folder and file names.  


#### 🔹 Storage Structure in Azure Data Lake (Bronze Container)  
✅ Data stored in **folders per dataset** in **Azure Data Lake Gen2**.  
  

### 📚 **Topics Covered**  
✔️ Working with APIs  
✔️ Understanding Azure Data Factory & Linked Services  
✔️ Static & Dynamic Pipelines in ADF  
✔️ Azure Data Lake Gen2  

---

## ⚡ **Silver Layer: Data Transformation in Azure Databricks**  
### 🎯 **Objective**  
Transform raw data in **Azure Databricks** using **Apache Spark**, store cleaned data in **Parquet format**, and save it into the **Silver container** in Data Lake.

### 🛠 **Implementation Steps**  
#### 🔹 Set Up Azure Databricks & Cluster  
✅ Created **Databricks Workspace** and configured **Service Principal** for access to Data Lake.  
✅ Configured **Role Assignments** to access the storage.  

#### 🔹 Load & Transform Data in Databricks  
✅ Read raw data from **Bronze storage** using **Spark DataFrames**.  
✅ Applied **Data Cleansing & Transformation** (e.g., handling null values, converting data types).  
✅ Saved transformed data in **Parquet format** in the **Silver storage**.   

#### 🔹 Storage Structure in Azure Data Lake (Silver Container)  
✅ Transformed data stored in **organized folders** in **Parquet format**. 

### 📚 **Topics Covered**  
✔️ Azure Databricks Cluster setup & configuration  
✔️ Role Assignments with Data Lake  
✔️ Working with Apache Spark  
✔️ Data Cleansing & Transformation in Spark  

---

## 🏆 **Gold Layer: Data Analysis with Azure Synapse Analytics**  
### 🎯 **Objective**  
Extract transformed data from **Silver storage** into **Azure Synapse Analytics**, create a **Serverless SQL Database**, and implement an **abstraction layer using Views & External Tables**.

### 🛠 **Implementation Steps**  
#### 🔹 Set Up Azure Synapse & Create External Tables  
✅ Created **Azure Synapse Workspace**.  
✅ Configured **External Data Source** pointing to the **Silver storage**.  
✅ Defined **External File Formats** for reading **Parquet files**.  
✅ Created **External Tables** in Synapse for each dataset.  

#### 🔹 Implement Data Lakehouse Abstraction with Views  
✅ Used **OPENROWSET** to query **Parquet files** directly from storage.  
✅ Created **Views** for each dataset to provide an **abstraction layer**.  


#### 🔹 Comparison: Serverless vs Dedicated SQL Pools  
- **Serverless SQL Pool** → Pay-as-you-go model, ideal for querying data without ETL.  
- **Dedicated SQL Pool** → Pre-allocated compute resources, used for **high-performance workloads**.  

### 📚 **Topics Covered**  
✔️ Azure Synapse Analytics Features  
✔️ Difference between Serverless & Dedicated SQL Pools  
✔️ OPENROWSET & External Tables in Synapse  
✔️ Querying Parquet files with SQL  

---

## 🎯 **Conclusion**  
This project provided **hands-on experience** with a **full data engineering pipeline** using **Azure Services**.  
The **Medallion Architecture** allowed **efficient data ingestion, transformation, and analytics**, making data **ready for visualization**.

### 🔥 **Key Learnings**  
✔️ End-to-end ETL Pipeline Development  
✔️ Azure Data Factory for Data Ingestion  
✔️ Azure Databricks for Data Transformation  
✔️ Azure Synapse Analytics for Data Analysis  
✔️ Medallion Architecture Implementation in Data Lakehouse 
