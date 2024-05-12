-- Revert: schemas/dashboard_public/tables/news_articles/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".news_articles FROM authenticated;
COMMIT;  

