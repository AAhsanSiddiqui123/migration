-- Revert: schemas/dashboard_public/tables/action_language_variations/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".action_language_variations;
COMMIT;  

