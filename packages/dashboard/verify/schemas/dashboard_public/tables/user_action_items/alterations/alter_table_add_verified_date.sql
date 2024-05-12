-- Verify schemas/dashboard_public/tables/user_action_items/alterations/alter_table_add_verified_date  on pg

BEGIN;

SELECT verified_date FROM dashboard_public.user_action_items LIMIT 1;

ROLLBACK;
