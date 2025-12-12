# 📚 Online Bookstore SQL Analysis  
### By: Mohammad Kaif Firoz

An end-to-end SQL-driven analysis of an Online Bookstore to understand revenue patterns, stock movement, customer behavior, and genre performance.  
This project demonstrates SQL-based data exploration, business problem solving, and actionable insights generation.

---

## 📂 1. Project Files Included

| File Name | Description |
|----------|-------------|
| **online_bookstore.sql** | Complete SQL script for cleaning, analysis, and insights |
| **books.csv** | Book details (genre, author, price, stock) |
| **customers.csv** | Customer information |
| **orders.csv** | Transaction data (quantity, order amount) |
| **README.md** | Project overview & documentation |

---

## 🎯 2. Project Objective

To analyze bookstore performance by studying:

- Top-selling genres & authors  
- Customer purchasing patterns  
- Total revenue contributions  
- Inventory remaining after sales  
- High-value customers and repeat buyers  
- Pricing insights for premium genres  

---

## 📊 3. Dataset Summary

### **Books Table**
- `book_id`, `title`, `author`, `genre`, `price`, `stock`

### **Customers Table**
- `customer_id`, `name`, `email`

### **Orders Table**
- `order_id`, `customer_id`, `book_id`, `quantity`, `total_amount`

---

## 🛠 4. SQL Techniques Used

- **JOINs** (INNER JOIN, LEFT JOIN)  
- **Aggregation Functions** (SUM, COUNT, AVG)  
- **GROUP BY & HAVING**  
- **Subqueries**  
- **LIMIT** for ranking and top-N analysis  
- **CTAS** (Create Table As Select) for derived tables  

---

## 🔍 5. Business Questions Answered

### ✔ **1. Which genres generate the highest revenue?**  
Identified top-selling genres and their contribution to total sales.

### ✔ **2. Who are the repeat customers?**  
Detected recurring buyers and calculated their revenue share.

### ✔ **3. Which authors perform best?**  
Ranked authors by total revenue and books sold.

### ✔ **4. What is the remaining stock of each book?**  
Calculated inventory left after sales using SQL arithmetic.

### ✔ **5. What are the most expensive fantasy books?**  
Filtered and ranked premium books using LIMIT.

### ✔ **6. Which customers drive the highest earnings?**  
Used aggregations + ranking to identify high-value customers.

---

## 📈 6. Key Insights

- **Fiction and Fantasy** were the **top-performing genres**  
- **Repeat customers** contributed a major share of total revenue  
- Several books **required restocking** due to high sales volume  
- A few authors were **consistent high performers**, indicating strong market demand  
- Premium Fantasy books showed strong pricing potential  

---

## 🚀 7. Value Delivered

- Identified **high-revenue genres** for targeted campaigns  
- Helped optimize **inventory planning** based on stock-gap analysis  
- Revealed **customer loyalty** and repeat purchasing trends  
- Provided insights to refine **pricing strategy** for premium books  

---

## 👨‍💻 8. Author

**Mohammad Kaif Firoz**  
Data Analyst — SQL | Power BI | Excel | Tableau | Python  

📧 **Email:** kaifsidd2003@gmail.com  
🔗 **LinkedIn:** https://www.linkedin.com/in/kaiffiroz/  

---

⭐ *If you found this project useful, please consider giving the repository a star!* ⭐
