-- Revert: schemas/dashboard_public/tables/news_articles/columns/link/column from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles DROP COLUMN link;
COMMIT;  

