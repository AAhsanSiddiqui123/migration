-- Deploy: schemas/dashboard_public/tables/news_articles/columns/id/alterations/alt0000000636 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/news_articles/table
-- requires: schemas/dashboard_public/tables/news_articles/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".news_articles 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
