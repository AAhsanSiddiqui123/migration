-- Verify: schemas/dashboard_public/tables/news_articles/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.news_articles');
COMMIT;  

