-- Revert: schemas/dashboard_public/tables/action_locations/columns/owner_id/alterations/alt0000000838 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_locations 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

