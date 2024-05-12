-- Verify: schemas/dashboard_public/tables/news_articles/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.news_articles');
COMMIT;  

