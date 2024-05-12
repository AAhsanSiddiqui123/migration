-- Revert: schemas/dashboard_public/tables/impact_language_variations/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".impact_language_variations;
COMMIT;  

