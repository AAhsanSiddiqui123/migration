-- Revert: schemas/dashboard_public/tables/object_type_language_variations/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".object_type_language_variations;
COMMIT;  

