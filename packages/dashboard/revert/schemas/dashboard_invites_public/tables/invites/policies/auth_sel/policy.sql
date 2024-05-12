-- Revert: schemas/dashboard_invites_public/tables/invites/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_invites_public".invites;
COMMIT;  

