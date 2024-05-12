-- Deploy: schemas/dashboard_public/tables/news_articles/alterations/alt0000000635 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/news_articles/table

BEGIN;

ALTER TABLE "dashboard_public".news_articles
    DISABLE ROW LEVEL SECURITY;
COMMIT;
