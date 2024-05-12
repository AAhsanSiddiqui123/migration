-- Revert: schemas/dashboard_public/tables/action_item_language_variations/triggers/_000000000_ensure_update_action_item_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_action_item_id ON "dashboard_public".action_item_language_variations;
COMMIT;  

