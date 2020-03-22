# Created via Reverse Engineering Feature in MySql.

CREATE TABLE `df_raw` (
  `X` bigint DEFAULT NULL,
  `Job_Title` text,
  `Link` text,
  `Queried_Salary` text,
  `Job_Type` text,
  `Skill` text,
  `No_of_Skills` bigint DEFAULT NULL,
  `Company` text,
  `No_of_Reviews` double DEFAULT NULL,
  `No_of_Stars` double DEFAULT NULL,
  `Date_Since_Posted` bigint DEFAULT NULL,
  `Description` text,
  `Location` text,
  `Company_Revenue` text,
  `Company_Employees` text,
  `Company_Industry` text,
  `python` bigint DEFAULT NULL,
  `sql` bigint DEFAULT NULL,
  `machine.learning` bigint DEFAULT NULL,
  `r` bigint DEFAULT NULL,
  `hadoop` bigint DEFAULT NULL,
  `tableau` bigint DEFAULT NULL,
  `sas` bigint DEFAULT NULL,
  `spark` bigint DEFAULT NULL,
  `java` bigint DEFAULT NULL,
  `Others` bigint DEFAULT NULL,
  `CA` bigint DEFAULT NULL,
  `NY` bigint DEFAULT NULL,
  `VA` bigint DEFAULT NULL,
  `TX` bigint DEFAULT NULL,
  `MA` bigint DEFAULT NULL,
  `IL` bigint DEFAULT NULL,
  `WA` bigint DEFAULT NULL,
  `MD` bigint DEFAULT NULL,
  `DC` bigint DEFAULT NULL,
  `NC` bigint DEFAULT NULL,
  `Other_states` bigint DEFAULT NULL,
  `Consulting.and.Business.Services` bigint DEFAULT NULL,
  `Internet.and.Software` bigint DEFAULT NULL,
  `Banks.and.Financial.Services` bigint DEFAULT NULL,
  `Health.Care` bigint DEFAULT NULL,
  `Insurance` bigint DEFAULT NULL,
  `Other_industries` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

CREATE TABLE `skills` (
  `id` double DEFAULT NULL,
  `skill` text,
  `skill_type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;
