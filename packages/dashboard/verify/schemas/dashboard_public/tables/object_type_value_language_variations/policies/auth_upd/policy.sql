-- Verify: schemas/dashboard_public/tables/object_type_value_language_variations/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.object_type_value_language_variations');
COMMIT;  

