-- Revert: schemas/dashboard_public/tables/news_articles/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles DROP COLUMN id;
COMMIT;  

