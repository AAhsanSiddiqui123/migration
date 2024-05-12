-- Revert: schemas/dashboard_invites_public/tables/member_invites/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_invites_public".member_invites;
COMMIT;  

