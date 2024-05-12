-- Revert: schemas/dashboard_public/tables/location_types/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".location_types FROM authenticated;
COMMIT;  

