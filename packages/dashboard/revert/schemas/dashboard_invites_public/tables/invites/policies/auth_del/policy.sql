-- Revert: schemas/dashboard_invites_public/tables/invites/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_invites_public".invites;
COMMIT;  

