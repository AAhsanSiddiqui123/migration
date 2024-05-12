-- Verify: schemas/dashboard_public/tables/emails/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.emails');
COMMIT;  

