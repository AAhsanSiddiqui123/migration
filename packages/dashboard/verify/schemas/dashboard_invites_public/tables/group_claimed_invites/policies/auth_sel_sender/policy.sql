-- Verify: schemas/dashboard_invites_public/tables/group_claimed_invites/policies/auth_sel_sender/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_sender', 'dashboard_invites_public.group_claimed_invites');
COMMIT;  

