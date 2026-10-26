Department Sales Analysis

1. Executive Summary

This report analyzes sales performance across five departments using a synthetic dataset of 100 employee records. Each department has 20 employees. Department-level sales and targets were aggregated using SQL to identify differences between actual sales and target values.

2. Department Performance

Department| Total Sales| Total Target| Difference
IT| 1,640,000| 1,490,000| +150,000
HR| 1,570,000| 1,580,000| -10,000
Finance| 1,536,000| 1,505,000| +31,000
Marketing| 1,378,000| 1,405,000| -27,000
Sales| 1,240,000| 1,285,000| -45,000

Difference = Total Sales − Total Target.

3. Key Findings

- IT recorded the highest total sales at 1,640,000 and exceeded its target by 150,000.
- Sales recorded the lowest total sales at 1,240,000 and fell short of its target by 45,000.
- Finance exceeded its target by 31,000.
- HR fell short of its target by 10,000.
- Marketing fell short of its target by 27,000.
- Each department has 20 employees.

4. Management Recommendations

1. Review departments below target. Examine employee-level results in HR, Marketing, and Sales to identify where performance support or further investigation may be useful.
2. Study IT's results. Review the employee-level sales distribution and other available data to understand how IT's total sales compare with its target.
3. Investigate before drawing causal conclusions. The current dataset shows sales and targets but does not explain why departments exceed or miss targets. Additional information would be needed to identify causes.

5. Limitations

This analysis summarizes department-level sales and targets. It does not establish why performance differs, and it does not account for factors outside the available dataset.

6. Tools Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL aggregation and grouping
- GitHub for project documentation

7. Data Disclaimer

This report uses synthetic data created for educational and portfolio purposes. It does not describe a real company or its employees.
