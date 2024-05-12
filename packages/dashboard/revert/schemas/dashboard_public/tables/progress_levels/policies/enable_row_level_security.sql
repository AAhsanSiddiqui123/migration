-- Revert schemas/dashboard_public/tables/progress_levels/policies/enable_row_level_security from pg

BEGIN;

ALTER TABLE dashboard_public.progress_levels
    DISABLE ROW LEVEL SECURITY;

COMMIT;
