-- Revert: schemas/dashboard_public/tables/location_types/grants/authenticated/insert/grant/alterations/alt0000001495 from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".location_types FROM authenticated;
COMMIT;  

