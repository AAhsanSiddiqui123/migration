-- Revert: schemas/dashboard_public/tables/news_articles/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".news_articles FROM authenticated;
COMMIT;  

