-- Revert schemas/dashboard_public/tables/progress_levels/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.progress_levels;

COMMIT;
