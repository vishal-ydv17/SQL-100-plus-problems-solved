# LeetCode Solution: Find Zombie Sessions

## Problem  
📋 **3673. Find Zombie Sessions**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/find-zombie-sessions/description/

## My Solution  
💡 **Very simple solution with logic explained**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/find-zombie-sessions/solutions/7291291/very-simple-sol-with-logic-explanation-b-h8gz/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Easy  
- **Key Concept:** Identify “zombie” sessions that started but never had activity  
- **Solution:**  
  1. Use a `LEFT JOIN` (or `NOT EXISTS`) to join `sessions` and `logs` on `session_id`.  
  2. Filter the joined table for sessions that have **no corresponding logs** (i.e., `log_id IS NULL`).  
  3. Return those `session_id`s as the zombie sessions.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
