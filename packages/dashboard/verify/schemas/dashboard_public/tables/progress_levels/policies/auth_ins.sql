-- Verify schemas/dashboard_public/tables/progress_levels/policies/auth_ins  on pg

BEGIN;

SELECT verify_policy ('auth_ins', 'dashboard_public.progress_levels');


ROLLBACK;
