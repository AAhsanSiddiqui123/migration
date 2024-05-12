-- Revert schemas/dashboard_public/tables/progress_levels/policies/auth_upd from pg

BEGIN;



DROP POLICY auth_upd ON dashboard_public.progress_levels;

COMMIT;
