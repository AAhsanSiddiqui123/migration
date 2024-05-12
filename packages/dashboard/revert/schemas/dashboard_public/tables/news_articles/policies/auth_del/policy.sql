-- Revert: schemas/dashboard_public/tables/news_articles/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".news_articles;
COMMIT;  

