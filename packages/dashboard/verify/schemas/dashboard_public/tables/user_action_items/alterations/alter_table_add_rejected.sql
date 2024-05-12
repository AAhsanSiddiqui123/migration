-- Verify schemas/dashboard_public/tables/user_action_items/alterations/alter_table_add_rejected  on pg

BEGIN;

SELECT rejected FROM dashboard_public.user_action_items LIMIT 1;

ROLLBACK;
