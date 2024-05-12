-- Verify schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_featured_order  on pg

BEGIN;

SELECT featured_order FROM dashboard_public.track_actions LIMIT 1;

ROLLBACK;
