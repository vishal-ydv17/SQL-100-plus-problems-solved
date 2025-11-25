```md
# LeetCode Solution: Find Students With Study Spiral Pattern

## Problem  
📋 **3617. Find Students With Study Spiral Pattern**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/find-students-with-study-spiral-pattern/description/

## My Solution  
💡 **Easy solution with proper logic explained**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/find-students-with-study-spiral-pattern/solutions/7310531/easy-sol-with-proper-logic-explaination-ev3e8/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Easy  
- **Key Concept:** Comparing study hours in a “spiral” pattern (increasing then decreasing)  
- **Solution:**  
  1. Use window functions (e.g. `LAG` / `LEAD`) to compare current day’s study hours with adjacent days.  
  2. Check if hours form either a “mountain” (increase then decrease) or a “valley” (decrease then increase) for each student.  
  3. Filter and select `student_id` that satisfy the pattern.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
```
