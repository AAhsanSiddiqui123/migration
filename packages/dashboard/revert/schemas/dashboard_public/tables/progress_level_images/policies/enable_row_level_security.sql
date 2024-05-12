-- Revert schemas/dashboard_public/tables/progress_level_images/policies/enable_row_level_security from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_images
    DISABLE ROW LEVEL SECURITY;

COMMIT;
