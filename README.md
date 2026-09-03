# 🧩 Data Modeling

> **A practical collection of data modeling problems, real-world case studies, database designs, and scalable data architecture solutions.**

This repository is focused on solving **real-world data modeling problems** encountered in Data Engineering, Analytics Engineering, Business Intelligence, and Data Warehousing.

The objective is to understand **how raw business requirements can be transformed into efficient, scalable, maintainable, and analytics-ready data models.**

---

## 🚀 What You'll Find Here

This repository contains hands-on problems and solutions covering:

| 📌 Area                       | 🔍 Topics                                                    |
| ----------------------------- | ------------------------------------------------------------ |
| 🗄️ **Database Modeling**     | ER Diagrams, Entities, Relationships, Keys, Constraints      |
| 🧱 **Schema Design**          | Normalization, Denormalization, Schema Optimization          |
| 📊 **Dimensional Modeling**   | Star Schema, Snowflake Schema, Fact & Dimension Tables       |
| 🔄 **SCD**                    | Slowly Changing Dimensions — Type 0, 1, 2, 3                 |
| 🏢 **Data Warehousing**       | OLTP, OLAP, Data Warehouse Architecture                      |
| ⚡ **Data Engineering**        | ETL/ELT, Data Pipelines, Incremental Loads                   |
| 🏞️ **Modern Data Platforms** | Data Lakes, Lakehouses, Medallion Architecture               |
| 📈 **Analytics**              | Reporting Models, BI Models, Analytical Datasets             |
| 🧠 **Case Studies**           | E-commerce, Banking, Healthcare, Streaming, Logistics & more |

---

## 🎯 Repository Goals

The main goal is to build strong practical skills in:

* Designing **efficient database schemas**
* Translating business requirements into **data models**
* Choosing the right **fact and dimension structures**
* Applying **normalization and denormalization**
* Designing **scalable data warehouse models**
* Handling **historical data using SCD techniques**
* Improving query performance and data accessibility
* Building models optimized for **analytics and BI**
* Understanding trade-offs between different modeling approaches

---

## 🏗️ Data Modeling Concepts

### 1️⃣ Conceptual Data Modeling

Understanding the business domain and identifying:

```text
Business Requirements
        ↓
Entities
        ↓
Attributes
        ↓
Relationships
        ↓
Conceptual Model
```

---

### 2️⃣ Logical Data Modeling

Transforming the conceptual model into a structured representation:

```text
Entities
   ↓
Primary Keys
   ↓
Foreign Keys
   ↓
Relationships
   ↓
Normalization
   ↓
Logical Schema
```

---

### 3️⃣ Physical Data Modeling

Implementing the logical model within a database or data platform:

```text
Logical Model
     ↓
Tables
     ↓
Columns & Data Types
     ↓
Indexes
     ↓
Constraints
     ↓
Partitions
     ↓
Physical Database
```

---

# ⭐ Dimensional Modeling

A major focus of this repository is **Dimensional Data Modeling**.

### Star Schema

```text
                 ┌─────────────────┐
                 │  Dim Customer   │
                 └────────┬────────┘
                          │
                          │
┌─────────────────┐   ┌───▼────────────┐   ┌─────────────────┐
│   Dim Product   │──►│   Fact Sales   │◄──│   Dim Date      │
└─────────────────┘   └───▲────────────┘   └─────────────────┘
                          │
                          │
                 ┌────────┴────────┐
                 │   Dim Store     │
                 └─────────────────┘
```

Topics include:

* Fact Tables
* Dimension Tables
* Grain Definition
* Surrogate Keys
* Degenerate Dimensions
* Conformed Dimensions
* Role-Playing Dimensions
* Additive & Non-Additive Measures
* Star Schema
* Snowflake Schema

---

# 🔄 Slowly Changing Dimensions

Special focus on handling historical changes in dimensional models.

| SCD Type   | Purpose                   |
| ---------- | ------------------------- |
| **Type 0** | Preserve original value   |
| **Type 1** | Overwrite existing value  |
| **Type 2** | Maintain complete history |
| **Type 3** | Maintain limited history  |

Example:

```text
Customer
   │
   ├── Customer ID
   ├── Customer Name
   ├── City
   ├── State
   ├── Effective Date
   ├── Expiry Date
   └── Current Flag
```

---

# 🧪 Problem-Solving Approach

Each data modeling problem is approached using a structured methodology:

```text
        Business Requirement
                 ↓
        Identify Entities
                 ↓
        Define Relationships
                 ↓
          Determine Grain
                 ↓
       Identify Facts & Dimensions
                 ↓
       Select Modeling Approach
                 ↓
        Design Database Schema
                 ↓
      Optimize for Performance
                 ↓
          Final Data Model
```

Where applicable, solutions include:

* Business requirements
* Assumptions
* Entity identification
* Grain definition
* Relationship mapping
* Schema design
* SQL implementation
* Data transformation logic
* Design decisions
* Trade-offs
* Performance considerations

---

# 📂 Repository Structure

```text
data-modeling/
│
├── 📁 01-database-modeling/
│   ├── problem-01/
│   ├── problem-02/
│   └── ...
│
├── 📁 02-dimensional-modeling/
│   ├── star-schema/
│   ├── snowflake-schema/
│   └── ...
│
├── 📁 03-slowly-changing-dimensions/
│   ├── scd-type-1/
│   ├── scd-type-2/
│   └── ...
│
├── 📁 04-data-warehouse/
│   ├── retail/
│   ├── banking/
│   ├── e-commerce/
│   └── ...
│
├── 📁 05-real-world-case-studies/
│   ├── netflix/
│   ├── amazon/
│   ├── uber/
│   └── ...
│
└── 📄 README.md
```

> 📌 The repository structure will evolve as new modeling problems and case studies are added.

---

# 💼 Real-World Domains

The problems in this repository are designed around realistic business scenarios such as:

### 🛒 E-Commerce

* Customers
* Orders
* Products
* Payments
* Inventory
* Shipments

### 🏦 Banking

* Customers
* Accounts
* Transactions
* Loans
* Payments

### 🎬 Streaming Platforms

* Users
* Videos
* Subscriptions
* Watch History
* Recommendations

### 🚚 Logistics

* Orders
* Warehouses
* Drivers
* Vehicles
* Deliveries

### 🏥 Healthcare

* Patients
* Doctors
* Appointments
* Treatments
* Billing

---

# 🛠️ Technologies & Tools

Depending on the problem, solutions may use:

<p>
<img src="https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white"/>
<img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"/>
<img src="https://img.shields.io/badge/Apache%20Spark-E25A1C?style=for-the-badge&logo=apachespark&logoColor=white"/>
<img src="https://img.shields.io/badge/Databricks-EA3E00?style=for-the-badge&logo=databricks&logoColor=white"/>
<img src="https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black"/>
<img src="https://img.shields.io/badge/Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white"/>
</p>

---

# 📈 Learning Roadmap

```text
Database Fundamentals
        │
        ▼
ER Modeling
        │
        ▼
Normalization
        │
        ▼
Dimensional Modeling
        │
        ▼
Star & Snowflake Schemas
        │
        ▼
Slowly Changing Dimensions
        │
        ▼
Data Warehouse Design
        │
        ▼
ETL / ELT Architecture
        │
        ▼
Modern Data Platforms
        │
        ▼
Scalable Data Architecture
```

---

# 🧠 Key Design Principles

Every solution aims to consider:

**1. Business Understanding**
Understand what the business actually needs before designing the schema.

**2. Grain**
Clearly define what one row in a fact table represents.

**3. Data Integrity**
Maintain consistency, accuracy, and referential integrity.

**4. Scalability**
Design models that can handle increasing data volume and business complexity.

**5. Performance**
Consider partitioning, indexing, clustering, query patterns, and storage strategies.

**6. Maintainability**
Create models that are easy for data engineers, analysts, and BI developers to understand and maintain.

**7. Historical Accuracy**
Preserve historical changes where the business requires them.

---

# 📚 Problems & Case Studies

New problems will be added regularly.

Each problem follows a consistent structure:

```text
Problem Statement
      ↓
Business Requirements
      ↓
Assumptions
      ↓
Data Model
      ↓
Schema Design
      ↓
SQL / Implementation
      ↓
Explanation
      ↓
Optimization & Trade-offs
```

---
