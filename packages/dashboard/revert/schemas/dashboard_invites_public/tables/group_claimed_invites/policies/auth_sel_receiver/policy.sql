-- Revert: schemas/dashboard_invites_public/tables/group_claimed_invites/policies/auth_sel_receiver/policy from pg

BEGIN;
DROP POLICY auth_sel_receiver ON "dashboard_invites_public".group_claimed_invites;
COMMIT;  

