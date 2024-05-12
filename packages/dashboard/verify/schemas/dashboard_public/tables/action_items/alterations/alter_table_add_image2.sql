-- Verify schemas/dashboard_public/tables/action_items/alterations/alter_table_add_image2  on pg

BEGIN;

SELECT image2 FROM dashboard_public.action_items LIMIT 1;

ROLLBACK;
