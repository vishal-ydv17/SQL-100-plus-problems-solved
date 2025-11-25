# LeetCode Solution: Find Churn Risk Customers

## Problem  
📋 **3716. Find Churn Risk Customers**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/find-churn-risk-customers/description/

## My Solution  
💡 **Easy solution with logic explained**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/find-churn-risk-customers/solutions/7297214/easy-sol-with-logic-explaination-by-vish-bmzu/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Easy  
- **Key Concept:** Divide customers into risk categories based on course completion rate  
- **Solution:**  
  1. Compute for each customer the total number of `completed_courses` / `total_courses`.  
  2. Use `CASE WHEN` to label customers as “High risk” (completion < 0.5), “Medium risk” (0.5 ≤ completion < 0.8), or “Low risk” (completion ≥ 0.8).  
  3. SELECT customer IDs with their risk labels.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
