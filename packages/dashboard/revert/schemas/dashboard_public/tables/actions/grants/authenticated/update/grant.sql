-- Revert: schemas/dashboard_public/tables/actions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".actions FROM authenticated;
COMMIT;  

