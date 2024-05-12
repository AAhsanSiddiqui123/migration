-- Revert schemas/dashboard_public/tables/progress_levels/policies/auth_sel from pg

BEGIN;



DROP POLICY auth_sel ON dashboard_public.progress_levels;

COMMIT;
