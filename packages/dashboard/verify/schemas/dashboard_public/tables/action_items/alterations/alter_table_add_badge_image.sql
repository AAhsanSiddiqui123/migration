-- Verify schemas/dashboard_public/tables/action_items/alterations/alter_table_add_badge_image  on pg

BEGIN;

SELECT badge_image FROM dashboard_public.action_items LIMIT 1;

ROLLBACK;
