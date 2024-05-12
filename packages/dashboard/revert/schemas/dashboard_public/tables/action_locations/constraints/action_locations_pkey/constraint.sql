-- Revert: schemas/dashboard_public/tables/action_locations/constraints/action_locations_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_locations 
    DROP CONSTRAINT action_locations_pkey;

COMMIT;  

