-- Revert: schemas/dashboard_public/tables/location_types/grants/authenticated/select/grant/alterations/alt0000001496 from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".location_types FROM authenticated;
COMMIT;  

