-- Verify: schemas/dashboard_invites_public/tables/group_invites/policies/auth_sel_members/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_members', 'dashboard_invites_public.group_invites');
COMMIT;  

