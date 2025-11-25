# LeetCode Solution: Department Top Three Salaries

## Problem  
📋 **185. Department Top Three Salaries**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/department-top-three-salaries/description/

## My Solution  
💡 **Simple solution with logic explained in easy language**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/department-top-three-salaries/solutions/7203448/simple-with-logic-explanation-in-easy-la-vmry/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Medium  
- **Key Concept:** Use window function (`DENSE_RANK()` or `ROW_NUMBER()`) to rank salaries per department  
- **Solution:** Partition by `departmentId`, order by `salary` descending, rank top 3, then filter for ranks ≤ 3.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
