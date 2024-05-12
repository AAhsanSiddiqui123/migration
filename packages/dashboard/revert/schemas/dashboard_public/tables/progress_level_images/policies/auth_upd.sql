-- Revert schemas/dashboard_public/tables/progress_level_images/policies/auth_upd from pg

BEGIN;



DROP POLICY auth_upd ON dashboard_public.progress_level_images;

COMMIT;
