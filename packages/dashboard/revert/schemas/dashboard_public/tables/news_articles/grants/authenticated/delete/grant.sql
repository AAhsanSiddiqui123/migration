-- Revert: schemas/dashboard_public/tables/news_articles/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".news_articles FROM authenticated;
COMMIT;  

