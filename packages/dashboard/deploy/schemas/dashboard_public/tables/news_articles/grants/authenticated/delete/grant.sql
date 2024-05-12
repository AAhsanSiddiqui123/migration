-- Deploy: schemas/dashboard_public/tables/news_articles/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/news_articles/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".news_articles TO authenticated;
COMMIT;
