-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/policies/enable_row_level_security from pg

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions
    DISABLE ROW LEVEL SECURITY;

COMMIT;
