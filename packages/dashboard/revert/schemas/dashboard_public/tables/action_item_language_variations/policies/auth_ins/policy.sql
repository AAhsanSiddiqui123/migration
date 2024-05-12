-- Revert: schemas/dashboard_public/tables/action_item_language_variations/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".action_item_language_variations;
COMMIT;  

