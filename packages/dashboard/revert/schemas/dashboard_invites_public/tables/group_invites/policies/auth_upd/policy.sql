-- Revert: schemas/dashboard_invites_public/tables/group_invites/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_invites_public".group_invites;
COMMIT;  

