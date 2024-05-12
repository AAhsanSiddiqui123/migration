-- Deploy: schemas/dashboard_public/tables/news_articles/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/news_articles/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".news_articles TO authenticated;
COMMIT;
