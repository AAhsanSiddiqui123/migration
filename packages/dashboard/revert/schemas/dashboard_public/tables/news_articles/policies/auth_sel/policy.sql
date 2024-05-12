-- Revert: schemas/dashboard_public/tables/news_articles/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".news_articles;
COMMIT;  

