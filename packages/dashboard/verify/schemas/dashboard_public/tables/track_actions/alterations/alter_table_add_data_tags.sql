-- Verify schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_data_tags  on pg

BEGIN;

SELECT data_tags FROM dashboard_public.track_actions LIMIT 1;

ROLLBACK;
