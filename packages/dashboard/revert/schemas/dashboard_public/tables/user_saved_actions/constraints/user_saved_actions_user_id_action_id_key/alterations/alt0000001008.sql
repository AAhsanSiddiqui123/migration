-- Revert: schemas/dashboard_public/tables/user_saved_actions/constraints/user_saved_actions_user_id_action_id_key/alterations/alt0000001008 from pg

BEGIN;
COMMENT ON CONSTRAINT user_saved_actions_user_id_action_id_key ON "dashboard_public".user_saved_actions IS NULL;
COMMIT;  

