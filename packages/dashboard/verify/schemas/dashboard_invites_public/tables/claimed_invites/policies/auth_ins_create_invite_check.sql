-- Verify schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_ins_create_invite_check  on pg

BEGIN;

SELECT verify_policy ('auth_ins_create_invite_check', 'dashboard_invites_public.claimed_invites');


ROLLBACK;
