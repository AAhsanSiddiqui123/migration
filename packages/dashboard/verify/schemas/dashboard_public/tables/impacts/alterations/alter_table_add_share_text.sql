-- Verify schemas/dashboard_public/tables/impacts/alterations/alter_table_add_share_text  on pg

BEGIN;

SELECT share_text FROM dashboard_public.impacts LIMIT 1;

ROLLBACK;
