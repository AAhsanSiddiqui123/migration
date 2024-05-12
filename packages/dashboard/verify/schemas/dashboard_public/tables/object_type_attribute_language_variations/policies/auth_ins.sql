-- Verify schemas/dashboard_public/tables/object_type_attribute_language_variations/policies/auth_ins  on pg

BEGIN;

SELECT verify_policy ('auth_ins', 'dashboard_public.object_type_attribute_language_variations');


ROLLBACK;
