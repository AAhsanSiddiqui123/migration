-- Revert schemas/dashboard_public/tables/user_rewards/policies/enable_row_level_security from pg

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    DISABLE ROW LEVEL SECURITY;

COMMIT;
