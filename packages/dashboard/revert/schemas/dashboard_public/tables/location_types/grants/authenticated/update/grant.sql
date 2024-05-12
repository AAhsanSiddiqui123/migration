-- Revert: schemas/dashboard_public/tables/location_types/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".location_types FROM authenticated;
COMMIT;  

