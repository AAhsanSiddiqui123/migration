-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/ensure_update_owner_id  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_ensure_update_owner_id'); 
SELECT verify_trigger ('dashboard_public.ensure_update_owner_id');

ROLLBACK;
