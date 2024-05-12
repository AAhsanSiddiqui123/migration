-- Revert: schemas/dashboard_public/tables/news_articles/columns/id/alterations/alt0000000636 from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

