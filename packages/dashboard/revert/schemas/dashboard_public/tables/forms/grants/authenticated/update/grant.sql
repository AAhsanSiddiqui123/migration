-- Revert: schemas/dashboard_public/tables/forms/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".forms FROM authenticated;
COMMIT;  

