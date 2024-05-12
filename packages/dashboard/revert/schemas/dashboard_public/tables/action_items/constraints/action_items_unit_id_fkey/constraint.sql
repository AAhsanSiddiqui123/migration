-- Revert: schemas/dashboard_public/tables/action_items/constraints/action_items_unit_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    DROP CONSTRAINT action_items_unit_id_fkey;

COMMIT;  

