-- Verify: schemas/dashboard_public/tables/user_viewed_actions/triggers/_000000000_ensure_update_action_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_update_action_id');
COMMIT;  

