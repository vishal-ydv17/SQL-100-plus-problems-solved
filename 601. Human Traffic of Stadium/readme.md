# LeetCode Solution: Human Traffic of Stadium

## Problem  
📋 **601. Human Traffic of Stadium**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/human-traffic-of-stadium/description/

## My Solution  
💡 **Simple solution with logic explained**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/human-traffic-of-stadium/solutions/7271785/simple-sol-with-logic-explaination-by-vi-kx4o/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Easy / Medium  
- **Key Concept:** Aggregation over time intervals  
- **Solution:**  
  1. Use `SUM` with `CASE WHEN` to accumulate counts of entrances and exits by date and hour.  
  2. Derive the net traffic (people in stadium) at each hour by subtracting exits from entrances.  
  3. Group by the date and the hour to compute traffic for each hour.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
