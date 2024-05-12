-- Revert: schemas/dashboard_public/tables/quantities/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".quantities FROM authenticated;
COMMIT;  

