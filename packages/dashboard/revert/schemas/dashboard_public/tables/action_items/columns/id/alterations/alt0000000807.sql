-- Revert: schemas/dashboard_public/tables/action_items/columns/id/alterations/alt0000000807 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

