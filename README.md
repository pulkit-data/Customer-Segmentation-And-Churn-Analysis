# Customer Segmentation & Churn Prediction

Ever wondered which customers are about to leave — before they actually do? 
That's exactly what this project solves.

Using a real-world UK retail dataset with over 800,000 transactions, I built 
a complete customer intelligence system that segments customers by behavior, 
predicts who's likely to churn, and surfaces actionable insights through an 
interactive Power BI dashboard.

## The Problem
Businesses lose customers every day without knowing why — or who's next. 
Generic marketing treats a first-time buyer the same as a loyal champion. 
This project fixes that by giving every customer a behavioral score and 
a churn risk rating.

## What I Built
Starting from raw transaction data, I cleaned and processed 800K+ rows, 
engineered RFM (Recency, Frequency, Monetary) features for 5,878 customers, 
trained a Random Forest model that predicts churn with 99% accuracy, and 
built a 3-page Power BI dashboard to make all of it visible to non-technical 
stakeholders.

## The Findings
The results were eye-opening. Active customers spend 4x more than churned 
ones. Recency alone predicts 72% of churn — meaning if a customer hasn't 
bought in a while, they're almost certainly gone. Over 1,000 high-value 
customers are currently at risk, and November consistently spikes revenue 
every year — a clear seasonal pattern worth planning around.

The UK dominates revenue at 15M+, which raises its own strategic question: 
is the business too dependent on one market?

## Tech Stack
- **Python** — data cleaning, RFM analysis, machine learning
- **PostgreSQL** — storing and querying customer data
- **Power BI** — interactive dashboard for business stakeholders
- **Scikit-learn** — Random Forest churn prediction model

## Project Structure
Customer_Segmentation/
│
├── 01_data_exploration.ipynb
├── 02_data_cleaning.ipynb
├── 03_rfm_analysis.ipynb
├── 04_churn_prediction.ipynb
├── retail_SQL.sql
├── online_retail_cleaned.csv
├── rfm_scores.csv
└── rfm_with_churn.csv

## Model Performance
- Algorithm: Random Forest Classifier
- Accuracy: 99%+
- Churn Rate: 35.71%
- Most Important Feature: Recency (72.7%)

## Customer Segments Breakdown
| Segment | Count | What It Means |
|---|---|---|
| Loyal Customers | 1,403 | Buy regularly, keep nurturing |
| Champions | 1,300 | Best customers, reward them |
| Lost | 1,275 | Gone — win-back campaign needed |
| At Risk | 824 | Slipping away — act now |
| New Customers | 443 | Just arrived — onboard well |
| Potential Loyalists | 385 | Showing promise |
| Cant Lose Them | 248 | High value, going quiet — urgent |

## Dashboard
3 pages covering customer segments, churn analysis, 
and revenue trends by month and country.

## Dataset
UCI Online Retail II — real transactions from a UK-based 
online retailer between 2009 and 2011.
[Download here](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci)
