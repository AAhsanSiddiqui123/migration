-- Verify schemas/dashboard_public/tables/impacts/alterations/alter_table_add_feed_order  on pg

BEGIN;

SELECT feed_order FROM dashboard_public.impacts LIMIT 1;

ROLLBACK;
