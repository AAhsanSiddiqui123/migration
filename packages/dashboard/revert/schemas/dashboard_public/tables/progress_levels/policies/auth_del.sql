-- Revert schemas/dashboard_public/tables/progress_levels/policies/auth_del from pg

BEGIN;



DROP POLICY auth_del ON dashboard_public.progress_levels;

COMMIT;
