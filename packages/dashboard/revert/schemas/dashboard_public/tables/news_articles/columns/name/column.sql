-- Revert: schemas/dashboard_public/tables/news_articles/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles DROP COLUMN name;
COMMIT;  

