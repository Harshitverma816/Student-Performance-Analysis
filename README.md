📘 Student Performance Analysis – Data Analytics Project
Python • SQL • Power BI • Data Visualization

🚀 Project Overview

This project analyzes student performance across Math, Reading, and Writing to identify:

Key factors influencing academic success

Behavioral and demographic patterns

Subjects where students struggle most

The impact of test preparation and parental education

Performance clusters and subject correlations

The project follows a complete end-to-end data analytics workflow, covering data cleaning, EDA, SQL analysis, interactive dashboard development, insights, and recommendations.

📂 Dataset

The dataset contains 1,000 student records, including:

Demographics

- Gender

- Race/Ethnicity

- Parental Level of Education

- Lunch Type (Standard / Free/Reduced)

Academics

- Math Score

- Reading Score

- Writing Score

- Total Score (engineered)

- Average Score (engineered)

- Grade Band (A/B/C/D/F) (engineered)

- Performance Band (High/Medium/Low) (engineered)

Behavioral

- Test Preparation Course (Completed / None)

- Pass Indicators

- Pass Math

- Pass Reading

- Pass Writing

- Passed All Subjects

🛠 Tools & Technologies
Category -	Tools Used
Languages	 - Python, SQL
Libraries -	Pandas, NumPy, Matplotlib, Seaborn
Visualization -	Power BI
File Formats -	CSV, PPTX, ZIP
Techniques - 	EDA, Feature Engineering, DAX, Dashboarding
🔧 Steps Involved
1️⃣ Data Cleaning (Python)

- Handled data types and missing values

- Created derived metrics: total_score, avg_score

- Created categorical bands and pass/fail columns

- Ensured clean & analysis-ready dataset

2️⃣ Exploratory Data Analysis (Python)

- Performed complete EDA including:

- Subject-wise score distribution

- Correlation heatmap

- Demographic impact analysis

- Pass rate evaluation

Visualizations included histograms, bar charts, scatter plots, boxplots, line graphs, and heatmaps.

3️⃣ SQL Analysis (MySQL)

Key queries included:

- High/low performance analysis

- Test preparation impact

- Pass rate by gender/lunch/test prep

- Subject average comparison

- Ranking & window functions

- Student segmentation

4️⃣ Power BI Dashboard Development

Created a 3-page professional interactive dashboard:

📌 Page 1 — Overview Dashboard

KPI cards for Average Score, Subject Scores, Pass Rate, Total Students

Performance Band Distribution

Grade Band Distribution

Performance by Gender

Cards: Highest & Lowest Average Subject, Highest & Lowest Performing Subject

📌 Page 2 — Subject-Wise Analysis

Math/Reading/Writing score distributions

Subject comparison chart

Math vs Reading scatter plot

Pass rate by subject

📌 Page 3 — Demographic Impact Analysis

Gender-based average score

Parental education comparison

Lunch type impact

Test preparation effect

Race/ethnicity performance

📊 Key Insights
🔹 Subject Performance

Reading & Writing show strong correlation.

Math is the most challenging subject overall.

🔹 Demographic Findings

Students with standard lunch perform significantly better.

Parental education has a noticeable impact on average scores.

Gender differences appear mainly in reading & writing.

🔹 Test Preparation Impact

Students who completed test preparation score 12–15 points higher on average.

They also have much higher pass rates across subjects.

🔹 Performance Bands

Most students fall in the Medium performance band.

High performers show consistent Reading & Writing strengths.

📌 Recommendations

Enhance Math intervention programs

Target support for free/reduced lunch students

Encourage participation in test preparation courses

Increase parental engagement & awareness

Focus on improving Reading/Writing to uplift total performance

📁 Project Files Included

student_performance_clean.csv — Cleaned dataset

Python scripts — EDA

SQL file — Queries & insights

Power BI file — 3-page dashboard

PPT Presentation — Professional project deck

Project report — Detailed documentation

README (this file)

🚀 How to Run This Project
Clone the Repository

git clone https://github.com/Harshitverma816/student-performance-analysis.git cd student-performance-analysis

Set Up Python Environment
Python
pip install pandas numpy seaborn matplotlib
python eda_student_performance.py

SQL

Import the dataset into MySQL and run the SQL queries.

Power BI

Open the .pbix file and refresh visuals.

👨‍💻 Author

Harshit Verma
Data Analyst | Python | SQL | Power BI
LinkedIn: Harshit Verma  
GitHub: Harshitverma816
