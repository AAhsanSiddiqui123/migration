-- Revert: schemas/dashboard_public/tables/posts/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".posts FROM authenticated;
COMMIT;  

