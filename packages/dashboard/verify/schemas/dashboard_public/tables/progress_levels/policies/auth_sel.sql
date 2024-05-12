-- Verify schemas/dashboard_public/tables/progress_levels/policies/auth_sel  on pg

BEGIN;

SELECT verify_policy ('auth_sel', 'dashboard_public.progress_levels');


ROLLBACK;
