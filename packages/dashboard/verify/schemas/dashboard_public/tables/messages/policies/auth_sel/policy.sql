-- Verify: schemas/dashboard_public/tables/messages/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.messages');
COMMIT;  

