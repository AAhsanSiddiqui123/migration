-- Revert: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    DROP CONSTRAINT user_action_items_pkey;

COMMIT;  

