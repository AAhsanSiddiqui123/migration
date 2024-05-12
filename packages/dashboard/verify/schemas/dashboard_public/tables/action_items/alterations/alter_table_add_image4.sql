-- Verify schemas/dashboard_public/tables/action_items/alterations/alter_table_add_image4  on pg

BEGIN;

SELECT image4 FROM dashboard_public.action_items LIMIT 1;

ROLLBACK;
