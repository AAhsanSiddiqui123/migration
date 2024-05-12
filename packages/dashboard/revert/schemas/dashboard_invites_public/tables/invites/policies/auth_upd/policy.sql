-- Revert: schemas/dashboard_invites_public/tables/invites/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_invites_public".invites;
COMMIT;  

