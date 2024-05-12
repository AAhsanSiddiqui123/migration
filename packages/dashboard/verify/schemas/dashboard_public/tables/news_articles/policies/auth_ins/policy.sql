-- Verify: schemas/dashboard_public/tables/news_articles/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.news_articles');
COMMIT;  

