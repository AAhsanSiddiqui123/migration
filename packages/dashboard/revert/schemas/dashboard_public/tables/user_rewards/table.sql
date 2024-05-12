-- Revert schemas/dashboard_public/tables/user_rewards/table from pg

BEGIN;

DROP TABLE dashboard_public.user_rewards;

COMMIT;
