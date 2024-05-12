-- Verify schemas/dashboard_public/tables/actions/alterations/alter_table_add_reward_amount_text  on pg

BEGIN;

SELECT reward_amount_text FROM dashboard_public.actions LIMIT 1;

ROLLBACK;
