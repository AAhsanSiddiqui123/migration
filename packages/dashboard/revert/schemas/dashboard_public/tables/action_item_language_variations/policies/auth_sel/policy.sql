-- Revert: schemas/dashboard_public/tables/action_item_language_variations/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".action_item_language_variations;
COMMIT;  

