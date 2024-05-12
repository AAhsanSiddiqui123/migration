-- Verify schemas/dashboard_public/tables/action_items/alterations/alter_table_add_is_active  on pg

BEGIN;

SELECT is_active FROM dashboard_public.action_items LIMIT 1;

ROLLBACK;
