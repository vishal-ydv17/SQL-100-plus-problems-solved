```md
# LeetCode Solution: Find Loyal Customers

## Problem  
📋 **3657. Find Loyal Customers**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/find-loyal-customers/description/

## My Solution  
💡 **Very easy solution with logic explained**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/find-loyal-customers/solutions/7255596/very-easy-sol-with-logic-exp-by-vishal-y-t2ml/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Easy  
- **Key Concept:** Count distinct months a customer made an order  
- **Solution:** Use `COUNT(DISTINCT month)` (extract month from `order_date`) grouped by `customer_id`, then filter those with count ≥ 3.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
```
