-- Revert: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_user_id_fkey/alterations/alt0000000886 from pg

BEGIN;
COMMENT ON CONSTRAINT user_action_items_user_id_fkey ON "dashboard_public".user_action_items IS NULL;
COMMIT;  

