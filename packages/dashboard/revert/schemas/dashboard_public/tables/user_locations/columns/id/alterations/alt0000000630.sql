-- Revert: schemas/dashboard_public/tables/user_locations/columns/id/alterations/alt0000000630 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

