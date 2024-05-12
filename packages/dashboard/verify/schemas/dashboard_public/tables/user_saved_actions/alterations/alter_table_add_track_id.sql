-- Verify schemas/dashboard_public/tables/user_saved_actions/alterations/alter_table_add_track_id  on pg

BEGIN;

SELECT track_id FROM dashboard_public.user_saved_actions LIMIT 1;

ROLLBACK;
