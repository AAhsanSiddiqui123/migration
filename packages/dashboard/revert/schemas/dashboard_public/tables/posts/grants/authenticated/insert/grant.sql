-- Revert: schemas/dashboard_public/tables/posts/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".posts FROM authenticated;
COMMIT;  

