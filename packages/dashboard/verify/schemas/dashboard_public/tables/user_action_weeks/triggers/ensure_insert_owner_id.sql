-- Verify schemas/dashboard_public/tables/user_action_weeks/triggers/ensure_insert_owner_id  on pg

BEGIN;

SELECT verify_function ('dashboard_private.user_action_weeks_ensure_insert_owner_id'); 
SELECT verify_trigger ('dashboard_public.ensure_insert_owner_id');

ROLLBACK;
