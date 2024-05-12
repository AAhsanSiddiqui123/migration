-- Revert: schemas/dashboard_public/tables/user_action_reactions/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".user_action_reactions;
COMMIT;  

