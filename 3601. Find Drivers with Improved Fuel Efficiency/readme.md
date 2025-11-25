```md
# LeetCode Solution: Find Drivers With Improved Fuel Efficiency

## Problem  
📋 **3601. Find Drivers With Improved Fuel Efficiency**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/find-drivers-with-improved-fuel-efficiency/description/

## My Solution  
💡 **Easy solution with logic explained**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/find-drivers-with-improved-fuel-efficiency/solutions/7245431/easy-sol-with-logic-explaination-by-vish-nqc9/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Easy  
- **Key Concept:** Compare fuel efficiency (`miles / gallons`) across years for each driver  
- **Solution:** Use a window function (e.g., `LAG`) partitioned by `driver_id`, ordered by `year` to find previous year’s efficiency, then filter where current year’s efficiency > previous year’s.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal-ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
```
