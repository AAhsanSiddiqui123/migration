-- Revert schemas/dashboard_public/tables/user_rewards/indexes/user_rewards_user_id_idx from pg

BEGIN;

DROP INDEX dashboard_public.user_rewards_user_id_idx;

COMMIT;
