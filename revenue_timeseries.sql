use database cortex_analyst_demo;
use schema revenue_timeseries;

desc table daily_revenue;
desc table product_dim;
desc table region_dim;

select rd.sales_region, pd.product_line, dr.* 
  from daily_revenue dr, product_dim pd, region_dim rd
 where pd.product_id = dr.product_id 
   and rd.region_id = dr.region_id;
