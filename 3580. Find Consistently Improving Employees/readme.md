# LeetCode Solution: Find Consistently Improving Employees

## Problem  
📋 **3580. Find Consistently Improving Employees**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/find-consistently-improving-employees/description/

## My Solution  
💡 **Simple solution with logic explained**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/find-consistently-improving-employees/solutions/7237431/simple-sol-with-logic-explaination-by-vi-tiyr/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Medium  
- **Key Concept:** Row-numbering + comparison across rows  
- **Solution:** Use a window function (`ROW_NUMBER()` / `LAG()`) partitioned by `employeeId` and ordered by year, then check for consecutive improvements in performance rating for every year.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal-ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
