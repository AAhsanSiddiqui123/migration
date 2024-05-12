-- Verify: schemas/dashboard_public/tables/related_actions/triggers/_000000000_ensure_insert_action_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_insert_action_id');
COMMIT;  

