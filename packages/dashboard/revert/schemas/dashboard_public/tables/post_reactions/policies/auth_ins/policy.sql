-- Revert: schemas/dashboard_public/tables/post_reactions/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".post_reactions;
COMMIT;  

