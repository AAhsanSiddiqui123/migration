-- Deploy: schemas/dashboard_public/tables/news_articles/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/news_articles/table

BEGIN;

ALTER TABLE "dashboard_public".news_articles ADD COLUMN name text;
COMMIT;
