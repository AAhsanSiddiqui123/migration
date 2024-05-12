-- Revert: schemas/dashboard_public/tables/user_location_types/columns/ref/alterations/alt0000001562 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_location_types DROP CONSTRAINT user_location_types_ref_chk;
COMMIT;  

