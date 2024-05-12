-- Revert schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_ins_create_invite_check from pg

BEGIN;



DROP POLICY auth_ins_create_invite_check ON dashboard_invites_public.claimed_invites;

COMMIT;
