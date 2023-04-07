use jobms;

## 1) Find the Count of Distinct Companies:
select count(distinct(Company)) from consolidated_search_ds;

## 2) Unique Job Titles:
select count(distinct(`Job Title`)) from consolidated_search_ds;

## 3) Unique Industries:
select count(distinct(Industry)) from consolidated_search_ds;

## 4) Unique Career Levels:
select count(distinct(`Career Level`)) from consolidated_search_ds;

## 5) Companies and the Total no. of Jobs in each Company:
select Company, count(*)as `No_of_jobs`    from consolidated_search_ds
group by Company
order by No_of_jobs desc;

## 6) Jobs in each Career Level :
select distinct(`Career Level`), count(*) from consolidated_search_ds
group by `Career level`;

## 7) No. of Jobs in each Job Role:
select distinct(`Search Term`), count(*)as `No_of_jobs` from consolidated_search_ds
group by `Search Term`
order by No_of_jobs desc;

## 8) Company with hightest No. of job openings in Data Scientist Role:
select Company, count(`Search Term`)as count from consolidated_search_ds
where `Search Term` = 'Data Scientist'
group by Company
order by count desc limit 1;
 
 ## 9) Company with hightest No. of job openings in Data Analyst Role:
select Company, count(`Search Term`)as count from consolidated_search_ds
where `Search Term` = 'Data Analyst'
group by Company
order by count desc limit 1;

## 10) Domain with hightest No. of job openings in Data Scientist Role:
select Industry, count(*)as count from consolidated_search_ds
where `Search Term` = 'Data Scientist'
group by Industry
order by count desc limit 1; 

## 10) Domain with hightest No. of job openings in Data Engineering Role:
select Industry, count(*)as count from consolidated_search_ds
where `Search Term` = 'Data Engineer'
group by Industry
order by count desc; 

## 11) No. of Entry Level Jobs in Data Scientist Role:
select `Search Term`, count(*)as count from consolidated_search_ds
where `Search Term` = 'Data Scientist' and `Career Level` = 'Entry'
group by `Search Term`;

## 11) No. of Entry Level Jobs in Data Analyst Role:
select `Search Term`, count(*)as count from consolidated_search_ds
where `Search Term` = 'Data Analyst' and `Career Level` = 'Entry'
group by `Search Term`;

## 13) No. of Entry Level Jobs in Machine Learning Engineer Role:
select `Search Term`, count(*)as count from consolidated_search_ds
where `Search Term` = 'Machine Learning Engineer' and `Career Level` = 'Entry'
group by `Search Term`;

## 14) No. of Entry Level Jobs in Machine Learning Engineer Role:
select `Search Term`, count(*)as count from consolidated_search_ds
where `Search Term` = 'Machine Learning Engineer' and `Career Level` = 'Entry'
group by `Search Term`;

select * from consolidated_search_ds;
