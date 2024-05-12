-- Revert: schemas/dashboard_public/tables/news_articles/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".news_articles FROM authenticated;
COMMIT;  

