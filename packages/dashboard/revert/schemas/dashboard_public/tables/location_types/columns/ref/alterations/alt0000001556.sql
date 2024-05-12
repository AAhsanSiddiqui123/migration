-- Revert: schemas/dashboard_public/tables/location_types/columns/ref/alterations/alt0000001556 from pg

BEGIN;
ALTER TABLE "dashboard_public".location_types DROP CONSTRAINT location_types_ref_chk;
COMMIT;  

