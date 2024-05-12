-- Revert: schemas/dashboard_public/tables/action_item_status_types/columns/status_for_verifier/alterations/alt0000001655 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_status_types 
    ALTER COLUMN status_for_verifier DROP DEFAULT;

COMMIT;  

