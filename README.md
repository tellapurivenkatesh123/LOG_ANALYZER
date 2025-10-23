
# 🧾 Log Analyser — Bash Automation Script

## 📘 Overview
`log_Analyser.sh` is a **Bash script** that automates the process of scanning and analyzing log files.  
It identifies **critical error patterns** such as `ERROR`, `FATAL`, and `CRITICAL` in `.log` files modified in the **last 24 hours**, then generates a detailed analysis report.

This tool helps developers and system administrators quickly detect recurring issues and take proactive action.

---

## ⚙️ Features
✅ Finds `.log` files modified in the last 24 hours  
✅ Scans for `ERROR`, `FATAL`, and `CRITICAL` messages  
✅ Counts and lists occurrences of each issue type  
✅ Generates a comprehensive report (`log_report.txt`)  
✅ Warns when any error type appears 10 or more times ⚠️  
✅ Stylish ASCII banner at script start  

---

## 🧩 File Structure
/home/venki/logs/
├── app1.log
├── app2.log
└── log_report.txt ← Generated report file

yaml
Copy code

---

## 🧠 How It Works

1. **Set Up Variables**
   ```bash
   path="/home/venki/logs/"
   err_types=('ERROR' 'FATAL' 'CRITICAL')
   logfile="/home/venki/logs/log_report.txt"
Find Logs Modified in Last 24 Hours

bash
Copy code
files=$(find $path -name "*.log" -mtime -1)
Analyze Logs

For each .log file, it:

Searches for the defined error types.

Counts how many times each occurs.

Logs both findings and counts in the report.

Displays a ⚠️ warning in the console if any count ≥ 10.

🧾 Example Output
Console

bash
Copy code
⚙️ Starting log analysis...

⚠️  TAKE ACTION IMMEDIATELY TOO MANY 'ERROR' ISSUES IN /home/venki/logs/app1.log

======= ANALYSED SUCCESSFULLY AND REPORTS STORED IN /home/venki/logs/log_report.txt =======
Report File (log_report.txt)

markdown
Copy code
===========================log-analysis=======================
================================================================================
===============THE LOGS FILES ANALYSIS UPDATED IN LAST 24 HOURS=================
/home/venki/logs/app1.log
================================================================================
============================ FETCHING IN /home/venki/logs/app1.log =============
============================== ERROR ISSUES ====================================
[ERROR] Unable to connect to database
[ERROR] Timeout occurred
==========================THE NUMBER OF ERROR ISSUES============================
12
==============================================================================
🚀 How to Use
Make the script executable

bash
Copy code
chmod +x log_Analyser.sh
Run the script

bash
Copy code
./log_Analyser.sh
Check the report

bash
Copy code
cat /home/venki/logs/log_report.txt
🧱 Requirements
No extra dependencies — it only uses built-in Linux utilities:

bash

find

grep

echo

⚡ Customization
Variable	Description	Example
path	Directory containing your .log files	/home/venki/logs/
err_types	Keywords to search for	('ERROR' 'FATAL' 'CRITICAL')
logfile	Path to store report	/home/venki/logs/log_report.txt

You can add more keywords (like WARN or DEBUG) to err_types for broader analysis.

🪵 ASCII Banner
Copy code
██╗      ██████╗  ██████╗ 
██║     ██╔═══██╗██╔════╝ 
██║     ██║   ██║██║  ███╗
██║     ██║   ██║██║   ██║
███████╗╚██████╔╝╚██████╔╝
╚══════╝ ╚═════╝  ╚═════╝ 
🧑‍💻 Author
Venkatesh Tellapuri
🎓 B.Tech Student | 💻 Bash & Automation Enthusiast
📅 Created: October 2025

🪪 License
This project is open source under the MIT License.