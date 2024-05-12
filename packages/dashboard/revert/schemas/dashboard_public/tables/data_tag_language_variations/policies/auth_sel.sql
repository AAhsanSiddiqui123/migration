-- Revert schemas/dashboard_public/tables/data_tag_language_variations/policies/auth_sel from pg

BEGIN;



DROP POLICY auth_sel ON dashboard_public.data_tag_language_variations;

COMMIT;
