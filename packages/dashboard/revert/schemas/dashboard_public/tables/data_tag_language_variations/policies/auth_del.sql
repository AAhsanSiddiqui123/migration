-- Revert schemas/dashboard_public/tables/data_tag_language_variations/policies/auth_del from pg

BEGIN;



DROP POLICY auth_del ON dashboard_public.data_tag_language_variations;

COMMIT;
