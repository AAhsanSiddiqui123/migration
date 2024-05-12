-- Revert schemas/dashboard_public/tables/progress_level_language_variations/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.progress_level_language_variations;

COMMIT;
