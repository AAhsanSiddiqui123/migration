-- Revert: schemas/dashboard_public/tables/news_articles/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles DROP COLUMN description;
COMMIT;  

