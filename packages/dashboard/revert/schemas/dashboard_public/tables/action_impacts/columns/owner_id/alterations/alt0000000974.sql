-- Revert: schemas/dashboard_public/tables/action_impacts/columns/owner_id/alterations/alt0000000974 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_impacts 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

