-- Revert: schemas/dashboard_public/tables/posts/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".posts FROM authenticated;
COMMIT;  

