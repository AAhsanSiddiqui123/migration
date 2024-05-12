-- Revert: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_action_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    DROP CONSTRAINT user_action_items_action_id_fkey;

COMMIT;  

