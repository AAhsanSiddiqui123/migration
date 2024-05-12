-- Revert: schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_sel_receiver/policy from pg

BEGIN;
DROP POLICY auth_sel_receiver ON "dashboard_invites_public".claimed_invites;
COMMIT;  

