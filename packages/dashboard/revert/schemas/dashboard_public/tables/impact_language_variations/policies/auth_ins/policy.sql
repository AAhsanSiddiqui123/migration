-- Revert: schemas/dashboard_public/tables/impact_language_variations/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".impact_language_variations;
COMMIT;  

