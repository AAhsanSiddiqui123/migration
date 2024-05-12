-- Revert: schemas/dashboard_public/tables/posts/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".posts FROM authenticated;
COMMIT;  

