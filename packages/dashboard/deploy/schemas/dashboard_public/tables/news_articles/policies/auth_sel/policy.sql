-- Deploy: schemas/dashboard_public/tables/news_articles/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/news_articles/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".news_articles FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
