use db_qkgp;

set hive.enforce.bucketing = true;

--1 年报数据表,546569399
insert overwrite table std_report_detail
select
eid,
report_year,
invest_items,
reg_no,
credit_no,
name,
telephone,
zip_code,
address,
email,
if_equity,
if_website,
if_invest,
collegues_num,
websites,
change_records,
partners,
total_equity,
serv_fare_income,
profit_reta,
net_amount,
sale_income,
tax_total,
profit_total,
debit_amount,
`report_date`,
external_guarantees,
stock_changes,
`update_records`
from db_enterprise_reportst_report_details
where eid is not null and report_year is not null;
