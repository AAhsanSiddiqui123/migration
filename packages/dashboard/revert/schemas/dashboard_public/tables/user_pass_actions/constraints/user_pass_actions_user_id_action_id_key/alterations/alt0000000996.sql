-- Revert: schemas/dashboard_public/tables/user_pass_actions/constraints/user_pass_actions_user_id_action_id_key/alterations/alt0000000996 from pg

BEGIN;
COMMENT ON CONSTRAINT user_pass_actions_user_id_action_id_key ON "dashboard_public".user_pass_actions IS NULL;
COMMIT;  

