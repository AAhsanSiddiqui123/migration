-- Verify: schemas/dashboard_invites_public/tables/member_claimed_invites/policies/auth_sel_receiver/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_receiver', 'dashboard_invites_public.member_claimed_invites');
COMMIT;  

