-- Revert: schemas/dashboard_invites_public/tables/invites/policies/auth_ins_create_invite_check/policy from pg

BEGIN;
DROP POLICY auth_ins_create_invite_check ON "dashboard_invites_public".invites;
COMMIT;  

