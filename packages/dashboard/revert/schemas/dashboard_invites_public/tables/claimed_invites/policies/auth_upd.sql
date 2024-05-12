-- Revert schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_upd from pg

BEGIN;



DROP POLICY auth_upd ON dashboard_invites_public.claimed_invites;

COMMIT;
