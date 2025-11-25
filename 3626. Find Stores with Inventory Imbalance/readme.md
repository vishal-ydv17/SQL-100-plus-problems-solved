```md
# LeetCode Solution: Find Stores With Inventory Imbalance

## Problem  
📋 **3626. Find Stores With Inventory Imbalance**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/find-stores-with-inventory-imbalance/description/

## My Solution  
💡 **Easy solution with logic explained**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/find-stores-with-inventory-imbalance/solutions/7253122/easy-sol-with-logic-explaination-by-vish-iaao/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Medium  
- **Key Concept:** Compare inventory counts between consecutive weeks  
- **Solution:** Use a window function (e.g., `LAG`) partitioned by `store` and ordered by `week_start` to find previous week's inventory count, then filter stores where current week’s inventory is more than twice or less than half of the previous week.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
```
