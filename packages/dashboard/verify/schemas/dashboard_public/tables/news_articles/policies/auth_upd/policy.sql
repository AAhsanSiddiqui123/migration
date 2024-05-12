-- Verify: schemas/dashboard_public/tables/news_articles/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.news_articles');
COMMIT;  

