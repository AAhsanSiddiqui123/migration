-- Verify: schemas/dashboard_invites_public/tables/group_invites/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_invites_public.group_invites');
COMMIT;  

