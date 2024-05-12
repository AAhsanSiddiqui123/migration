-- Revert: schemas/dashboard_public/tables/object_type_value_language_variations/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".object_type_value_language_variations;
COMMIT;  

