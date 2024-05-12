-- Revert: schemas/dashboard_invites_public/tables/group_invites/policies/auth_del_members/policy from pg

BEGIN;
DROP POLICY auth_del_members ON "dashboard_invites_public".group_invites;
COMMIT;  

