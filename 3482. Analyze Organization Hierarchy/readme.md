```md
# LeetCode Solution: Analyze Organization Hierarchy

## Problem  
📋 **3482. Analyze Organization Hierarchy**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/analyze-organization-hierarchy/description/

## My Solution  
💡 **Solution with logic explained in simple words**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/analyze-organization-hierarchy/solutions/7281597/sol-with-logic-explanation-in-simple-wor-yklx/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Medium  
- **Key Concept:** Recursive / hierarchical relationships via self-join  
- **Solution:**  
  1. Use a self-join on the `Employee` table where `Employee.managerId = Manager.id` to associate each employee with their manager.  
  2. Then **group** by employee name and count how many direct reports they have (i.e., how many employees have them as `managerId`).  
  3. Return each manager’s name and the number of employees reporting to them, **excluding** those who have zero reports, ordered alphabetically by the name.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
```
