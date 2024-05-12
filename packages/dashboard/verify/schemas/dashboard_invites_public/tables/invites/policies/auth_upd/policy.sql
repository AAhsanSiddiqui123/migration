-- Verify: schemas/dashboard_invites_public/tables/invites/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_invites_public.invites');
COMMIT;  

