-- Revert: schemas/dashboard_public/tables/action_locations/columns/id/alterations/alt0000000835 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_locations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

