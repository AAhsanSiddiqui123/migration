-- Revert: schemas/dashboard_public/tables/action_locations/columns/action_id/alterations/alt0000000836 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_locations 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

