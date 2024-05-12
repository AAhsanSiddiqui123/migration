-- Verify: schemas/dashboard_invites_public/tables/invites/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_invites_public.invites');
COMMIT;  

