-- Revert schemas/dashboard_public/tables/data_tag_language_variations/policies/auth_upd from pg

BEGIN;



DROP POLICY auth_upd ON dashboard_public.data_tag_language_variations;

COMMIT;
