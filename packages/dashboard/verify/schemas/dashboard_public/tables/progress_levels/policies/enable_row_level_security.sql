-- Verify schemas/dashboard_public/tables/progress_levels/policies/enable_row_level_security  on pg

BEGIN;

SELECT verify_security ('dashboard_public.progress_levels');

ROLLBACK;
