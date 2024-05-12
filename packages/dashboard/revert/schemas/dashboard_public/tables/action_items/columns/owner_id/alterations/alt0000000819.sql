-- Revert: schemas/dashboard_public/tables/action_items/columns/owner_id/alterations/alt0000000819 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

