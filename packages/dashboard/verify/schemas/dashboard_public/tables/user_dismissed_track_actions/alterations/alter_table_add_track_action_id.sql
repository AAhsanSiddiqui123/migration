-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/alter_table_add_track_action_id  on pg

BEGIN;

SELECT track_action_id FROM dashboard_public.user_dismissed_track_actions LIMIT 1;

ROLLBACK;
