-- Revert: schemas/dashboard_public/tables/news_articles/columns/published_at/column from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles DROP COLUMN published_at;
COMMIT;  

