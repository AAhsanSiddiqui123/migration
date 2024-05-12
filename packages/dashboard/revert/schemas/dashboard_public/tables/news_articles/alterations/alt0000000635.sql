-- Revert: schemas/dashboard_public/tables/news_articles/alterations/alt0000000635 from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

