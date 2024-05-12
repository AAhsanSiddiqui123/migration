-- Verify: schemas/dashboard_public/tables/news_articles/table on pg

BEGIN;
SELECT verify_table('dashboard_public.news_articles');
COMMIT;  

