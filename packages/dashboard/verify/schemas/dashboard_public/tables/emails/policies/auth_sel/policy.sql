-- Verify: schemas/dashboard_public/tables/emails/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.emails');
COMMIT;  

