-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/table on pg

BEGIN;

SELECT verify_table ('dashboard_public.user_dismissed_track_actions');

ROLLBACK;
