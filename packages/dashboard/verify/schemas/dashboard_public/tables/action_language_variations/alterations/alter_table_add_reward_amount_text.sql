-- Verify schemas/dashboard_public/tables/action_language_variations/alterations/alter_table_add_reward_amount_text  on pg

BEGIN;

SELECT reward_amount_text FROM dashboard_public.action_language_variations LIMIT 1;

ROLLBACK;
