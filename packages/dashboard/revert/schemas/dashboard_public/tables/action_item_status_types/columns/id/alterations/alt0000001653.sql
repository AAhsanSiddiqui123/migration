-- Revert: schemas/dashboard_public/tables/action_item_status_types/columns/id/alterations/alt0000001653 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_status_types 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

