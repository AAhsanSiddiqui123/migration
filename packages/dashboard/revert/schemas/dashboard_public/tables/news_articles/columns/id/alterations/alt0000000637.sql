-- Revert: schemas/dashboard_public/tables/news_articles/columns/id/alterations/alt0000000637 from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

