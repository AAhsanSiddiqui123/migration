-- Verify: schemas/dashboard_public/tables/news_articles/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.news_articles', 'insert', 'authenticated');
COMMIT;  

