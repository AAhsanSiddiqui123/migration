-- Verify: schemas/dashboard_invites_public/tables/group_invites/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_invites_public.group_invites');
COMMIT;  

