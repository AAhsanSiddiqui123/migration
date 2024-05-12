-- Revert schemas/dashboard_public/tables/user_action_weeks/policies/enable_row_level_security from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks
    DISABLE ROW LEVEL SECURITY;

COMMIT;
