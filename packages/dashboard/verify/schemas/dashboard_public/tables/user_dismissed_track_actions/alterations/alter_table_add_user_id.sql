-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/alter_table_add_user_id  on pg

BEGIN;

SELECT user_id FROM dashboard_public.user_dismissed_track_actions LIMIT 1;

ROLLBACK;
