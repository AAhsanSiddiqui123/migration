-- Verify: schemas/dashboard_invites_public/tables/invites/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_invites_public.invites');
COMMIT;  

