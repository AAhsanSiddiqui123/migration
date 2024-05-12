-- Revert: schemas/dashboard_public/tables/action_language_variations/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".action_language_variations;
COMMIT;  

