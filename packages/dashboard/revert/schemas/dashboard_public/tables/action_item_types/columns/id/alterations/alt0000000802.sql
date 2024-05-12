-- Revert: schemas/dashboard_public/tables/action_item_types/columns/id/alterations/alt0000000802 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

