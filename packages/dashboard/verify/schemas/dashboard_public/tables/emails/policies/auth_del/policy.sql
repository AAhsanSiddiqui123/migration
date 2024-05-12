-- Verify: schemas/dashboard_public/tables/emails/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.emails');
COMMIT;  

