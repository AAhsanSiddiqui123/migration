-- Revert: schemas/dashboard_public/tables/news_articles/constraints/news_articles_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles 
    DROP CONSTRAINT news_articles_pkey;

COMMIT;  

