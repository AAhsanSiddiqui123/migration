-- Verify: schemas/dashboard_public/tables/action_item_locations/triggers/_000000000_ensure_update_action_item_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_update_action_item_id');
COMMIT;  

