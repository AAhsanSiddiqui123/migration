-- Revert: schemas/dashboard_public/tables/news_articles/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

