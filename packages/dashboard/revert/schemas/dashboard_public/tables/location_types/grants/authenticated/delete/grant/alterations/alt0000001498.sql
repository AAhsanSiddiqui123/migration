-- Revert: schemas/dashboard_public/tables/location_types/grants/authenticated/delete/grant/alterations/alt0000001498 from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".location_types FROM authenticated;
COMMIT;  

