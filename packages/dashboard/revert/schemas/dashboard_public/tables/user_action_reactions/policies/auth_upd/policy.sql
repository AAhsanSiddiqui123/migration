-- Revert: schemas/dashboard_public/tables/user_action_reactions/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".user_action_reactions;
COMMIT;  

