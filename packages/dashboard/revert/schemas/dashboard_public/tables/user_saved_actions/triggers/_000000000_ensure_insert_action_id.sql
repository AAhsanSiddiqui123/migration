-- Revert: schemas/dashboard_public/tables/user_saved_actions/triggers/_000000000_ensure_insert_action_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_action_id ON "dashboard_public".user_saved_actions;
COMMIT;  

