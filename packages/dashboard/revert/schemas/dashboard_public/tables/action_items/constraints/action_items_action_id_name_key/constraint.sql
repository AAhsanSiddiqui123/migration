-- Revert: schemas/dashboard_public/tables/action_items/constraints/action_items_action_id_name_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    DROP CONSTRAINT action_items_action_id_name_key;

COMMIT;  

