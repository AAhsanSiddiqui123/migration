-- Revert schemas/dashboard_public/tables/data_tag_language_variations/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.data_tag_language_variations;

COMMIT;
