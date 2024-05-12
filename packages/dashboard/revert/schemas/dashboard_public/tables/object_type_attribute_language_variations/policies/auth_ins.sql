-- Revert schemas/dashboard_public/tables/object_type_attribute_language_variations/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.object_type_attribute_language_variations;

COMMIT;
