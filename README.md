# New york City Food Inspection Data Analysis
This project focuses on the extraction, transformation, and analysis of motor vehicle collision data in New York City. The goal is to develop an efficient data engineering process and perform in-depth analysis using various tools and techniques.

Project Highlights

• Developed and implemented an Extract, Transform, Load (ETL) process using Talend. Extracted data from multiple sources, applied business rules for transformation, and loaded the data into a target data warehouse with 26 dimensions and 7 facts.

• Utilized advanced data cleaning techniques, including fuzzy matching, to ensure data accuracy and consistency in the target database. Maintained a single source of truth for reporting purposes.Created a data catalog to ensure zero percent redundancy.

• Standardizing data formats (e.g., date formats, address formats) to ensure consistency across all records.

• Handling missing values by imputing them based on logical rules or statistical methods.

• Detecting and resolving data inconsistencies, such as conflicting or contradictory information.

• Performing outlier detection and handling to identify and address data points that deviate significantly from the norm.

• Removing duplicates and redundant records to maintain data integrity.
• Optimized ETL jobs by deploying a master job and implementing parallelization, resulting in faster data loading time of 30 minutes.

• Conducted deep data analysis by creating interactive visualizations using PowerBI. Generated insights such as the highest number of collisions occurring on weekends, the increase in collisions during the fall season, and the top 10 vehicles involved in crashes,Time of collisions.

• Performed advanced SQL queries to verify the accuracy of numbers and metrics in reports and supported further data analysis.

ER Model:

image

Getting Started

To run the ETL process and reproduce the analysis, follow these steps:

Clone the repository: git clone https://github.com/your-username/nyc-motor-vehicles-collision.git

Install the necessary dependencies for the ETL process, such as Talend and PowerBI.

Set up the required database connections in Talend and configure the ETL jobs.

Execute the ETL process to extract, transform, and load the data into the target data warehouse.

Open the PowerBI file in the visualizations/ directory to explore the generated visualizations and analysis.

• Resources

Talend Documentation

PowerBI Documentation

PowerBi Dashboard : https://tinyurl.com/NYC-MV-Collision

License This project is licensed under the MIT License.
