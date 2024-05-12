-- Revert schemas/dashboard_public/tables/progress_level_images/policies/auth_sel from pg

BEGIN;



DROP POLICY auth_sel ON dashboard_public.progress_level_images;

COMMIT;
