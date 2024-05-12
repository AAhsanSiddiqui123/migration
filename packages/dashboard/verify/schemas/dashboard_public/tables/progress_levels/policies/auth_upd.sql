-- Verify schemas/dashboard_public/tables/progress_levels/policies/auth_upd  on pg

BEGIN;

SELECT verify_policy ('auth_upd', 'dashboard_public.progress_levels');


ROLLBACK;
