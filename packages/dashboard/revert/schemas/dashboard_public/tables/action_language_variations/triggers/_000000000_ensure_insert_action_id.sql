-- Revert: schemas/dashboard_public/tables/action_language_variations/triggers/_000000000_ensure_insert_action_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_action_id ON "dashboard_public".action_language_variations;
COMMIT;  

