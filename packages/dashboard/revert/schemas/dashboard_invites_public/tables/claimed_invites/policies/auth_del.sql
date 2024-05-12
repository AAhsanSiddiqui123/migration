-- Revert schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_del from pg

BEGIN;



DROP POLICY auth_del ON dashboard_invites_public.claimed_invites;

COMMIT;
