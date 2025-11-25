```md
# LeetCode Solution: Movie Rating

## Problem  
📋 **1341. Movie Rating**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/movie-rating/description/

## My Solution  
💡 **Simple and easy to understand solution**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/movie-rating/solutions/7187772/simple-and-easy-to-understand-solution-w-4r5m/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Easy / Medium  
- **Key Concept:** Use window functions (like `RANK()` or `ROW_NUMBER()`) or group and join to get maximum rating  
- **Solution:** For each movie, pick the reviewer(s) with the highest rating — use `RANK()` over partition by `movieId` ordered by rating descending, then filter for rank = 1.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal-ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
```
