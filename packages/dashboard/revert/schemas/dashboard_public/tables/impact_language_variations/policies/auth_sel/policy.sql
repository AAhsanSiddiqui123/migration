-- Revert: schemas/dashboard_public/tables/impact_language_variations/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".impact_language_variations;
COMMIT;  

