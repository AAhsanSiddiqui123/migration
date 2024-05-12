-- Verify schemas/dashboard_public/tables/progress_levels/policies/auth_del  on pg

BEGIN;

SELECT verify_policy ('auth_del', 'dashboard_public.progress_levels');


ROLLBACK;
