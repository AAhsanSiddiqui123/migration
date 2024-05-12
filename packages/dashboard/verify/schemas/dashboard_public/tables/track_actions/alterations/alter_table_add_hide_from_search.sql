-- Verify schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_hide_from_search  on pg

BEGIN;

SELECT hide_from_search FROM dashboard_public.track_actions LIMIT 1;

ROLLBACK;
