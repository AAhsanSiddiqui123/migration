-- Revert schemas/dashboard_public/tables/reward_activity_types/policies/enable_row_level_security from pg

BEGIN;

ALTER TABLE dashboard_public.reward_activity_types
    DISABLE ROW LEVEL SECURITY;

COMMIT;
