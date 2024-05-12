-- Revert: schemas/dashboard_public/tables/news_articles/table from pg

BEGIN;
DROP TABLE "dashboard_public".news_articles;
COMMIT;  

