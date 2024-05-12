-- Revert: schemas/dashboard_public/tables/addresses/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".addresses FROM authenticated;
COMMIT;  

