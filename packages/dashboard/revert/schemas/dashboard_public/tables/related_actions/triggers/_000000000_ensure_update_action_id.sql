-- Revert: schemas/dashboard_public/tables/related_actions/triggers/_000000000_ensure_update_action_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_action_id ON "dashboard_public".related_actions;
COMMIT;  

