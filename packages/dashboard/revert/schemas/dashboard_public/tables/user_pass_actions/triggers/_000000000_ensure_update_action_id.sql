-- Revert: schemas/dashboard_public/tables/user_pass_actions/triggers/_000000000_ensure_update_action_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_action_id ON "dashboard_public".user_pass_actions;
COMMIT;  

