-- Verify: schemas/dashboard_invites_public/tables/group_invites/policies/auth_ins_create_invite_check/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_create_invite_check', 'dashboard_invites_public.group_invites');
COMMIT;  

