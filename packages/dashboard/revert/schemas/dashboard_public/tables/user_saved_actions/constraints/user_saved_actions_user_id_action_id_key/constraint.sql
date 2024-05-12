-- Revert: schemas/dashboard_public/tables/user_saved_actions/constraints/user_saved_actions_user_id_action_id_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_saved_actions 
    DROP CONSTRAINT user_saved_actions_user_id_action_id_key;

COMMIT;  

