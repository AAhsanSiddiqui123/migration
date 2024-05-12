-- Revert: schemas/dashboard_invites_public/tables/group_invites/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_invites_public".group_invites;
COMMIT;  

