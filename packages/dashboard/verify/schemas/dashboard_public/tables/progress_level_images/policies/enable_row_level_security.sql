-- Verify schemas/dashboard_public/tables/progress_level_images/policies/enable_row_level_security  on pg

BEGIN;

SELECT verify_security ('dashboard_public.progress_level_images');

ROLLBACK;
