-- Revert schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_invites_public.claimed_invites;

COMMIT;
