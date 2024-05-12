-- Revert: schemas/dashboard_public/tables/news_articles/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".news_articles;
COMMIT;  

