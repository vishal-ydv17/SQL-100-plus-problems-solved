```md
# LeetCode Solution: Find Category Recommendation Pairs

## Problem  
📋 **3554. Find Category Recommendation Pairs**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/find-category-recommendation-pairs/description/

## My Solution  
💡 **Very easy solution with logic explained**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/find-category-recommendation-pairs/solutions/7294377/very-easy-sol-with-logic-explaination-by-gq4l/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Easy  
- **Key Concept:** Use self-join to pair users based on viewed categories  
- **Solution:**  
  1. Self-join the table on `user_id` to find all distinct pairs of users who viewed the same `category`.  
  2. Use `DISTINCT` / `GROUP BY` to avoid duplicates and count each pair only once.  
  3. Select pairs (u1, u2) where u1 < u2, and order by u1, then u2.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
```
