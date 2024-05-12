-- Revert: schemas/dashboard_public/tables/news_articles/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".news_articles;
COMMIT;  

