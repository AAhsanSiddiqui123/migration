-- Verify schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_reference_Id  on pg

BEGIN;

SELECT reference_Id FROM dashboard_public.user_rewards LIMIT 1;

ROLLBACK;
