# LeetCode Solution: Find Invalid IP Addresses

## Problem  
📋 **3451. Find Invalid IP Addresses**  
Check out the full problem on LeetCode:  
👉 https://leetcode.com/problems/find-invalid-ip-addresses/description/

## My Solution  
💡 **Simple solution with logic explained**  
Read the complete explanation here:  
👉 https://leetcode.com/problems/find-invalid-ip-addresses/solutions/7274679/simple-sol-with-logic-explaination-by-vi-d15c/

---

## Quick Overview  
- **Problem Type:** SQL  
- **Difficulty:** Medium  
- **Key Concept:** Validate IPv4 address using string functions / pattern matching  
- **Solution:**  
  1. Split the IP string into four parts by `.`  
  2. Check each part:  
     - Should be only digits  
     - Should not have leading zeros (unless the part is exactly `"0"`)  
     - Numeric value should be between 0 and 255  
  3. Mark IPs as invalid if **any** above condition fails  
  4. Group invalid IPs, count how many times each appears, and order by count descending, then by IP descending.

---

## 👨‍💻 Author

**Vishal Yadav**

> 📧 Email: vishalyadavy0022@gmail.com  
> 💼 Portfolio: https://github.com/vishal-ydv17  
> 🔗 LinkedIn: https://linkedin.com/in/vishal_ydv17  
> 🐦 Twitter: https://x.com/vishal_ydv17  
