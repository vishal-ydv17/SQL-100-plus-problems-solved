```md
# LeetCode Solution: Find Students Who Improved

## Problem  
📋 **3421. Find Students Who Improved**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/find-students-who-improved/description/

## My Solution  
💡 **Solution with JOIN-based and WINDOW-based logic**  
Read the full explanation here:  
👉 https://leetcode.com/problems/find-students-who-improved/solutions/7207312/solution-withjoin-based-window-based-bea-kkqd/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Easy / Medium  
- **Key Concept:** Compare each student's scores between two exams  
- **Solution:**  
  - **Join-based:** Self-join the table on student IDs with `exam_id = 1` and `exam_id = 2`, then filter where score2 > score1  
  - **Window-based:** Use a window function (`LAG` / `FIRST_VALUE`) partitioned by student to compare scores across exams  

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
```
