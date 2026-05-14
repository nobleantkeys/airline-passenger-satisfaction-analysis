# ✈️ Airline Passenger Satisfaction Dashboard

An end-to-end data analysis project exploring what drives passenger satisfaction in the airline industry, built using **SQL Server** and **Power BI**.

---

## 📊 Project Overview

This project analyzes a dataset of **129,880 airline passengers** who rated 14 aspects of their flight experience on a scale of 1–5 (Lowest to Highest), and indicated whether they were satisfied or neutral/dissatisfied with their overall experience.

The goal was to identify which services most strongly correlate with satisfaction, and which passenger segments are most at risk of dissatisfaction.

---

## 🛠️ Tools Used

- **SQL Server (SSMS)** — data exploration and querying
- **Power BI** — data modeling, DAX measures, and dashboard visualization

---

## 📁 Repository Structure

```
├── queries2.sql          # All SQL queries used for exploration and analysis
├── dashboard2.png       # Power BI dashboard file
└── README.md
```

---

## 🔍 Key Questions Explored

- How many passengers were satisfied vs neutral/dissatisfied?
- Which services received the highest and lowest average ratings?
- How do service ratings differ between satisfied and dissatisfied passengers?
- Does passenger class (Business/Economy/Economy Plus) affect satisfaction?
- Are first-time customers less satisfied than returning customers?
- What percentage of flights were delayed, and by how much?

---

## 💡 Key Insights

- **56.55%** of passengers were neutral or dissatisfied, vs **43.45%** satisfied
- **In-flight Wifi** and **Ease of Online Booking** were the lowest rated services overall — and show the biggest gap between satisfied and dissatisfied passengers
- **Business class** passengers are overwhelmingly satisfied; **Economy** is the primary driver of dissatisfaction
- **First-time customers** show lower satisfaction rates than returning customers, suggesting a retention risk
- **54%** of flights experienced some form of departure or arrival delay, with an average delay of ~15 minutes

---

## 📈 Dashboard Features

- Average service ratings overall and segmented by satisfaction
- Satisfaction breakdown by passenger class and customer type
- Delay statistics including total delayed flights and average delay times
- Interactive slicers for Class, Gender, Customer Type, and Satisfaction

---

## 📂 Dataset

Source: Airline Passenger Satisfaction — Kaggle

The dataset contains 129,880 records with the following key columns:

- **Demographics:** Gender, Age, Customer Type
- **Flight Info:** Class, Flight Distance, Departure/Arrival Delay
- **Service Ratings (1–5):** Seat Comfort, In-flight Wifi, Food & Drink, Online Boarding, Gate Location, and 9 others
- **Target Variable:** Satisfaction (Satisfied / Neutral or Dissatisfied)
