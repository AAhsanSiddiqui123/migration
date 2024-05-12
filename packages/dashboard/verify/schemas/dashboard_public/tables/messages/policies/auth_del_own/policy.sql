-- Verify: schemas/dashboard_public/tables/messages/policies/auth_del_own/policy on pg

BEGIN;
SELECT verify_policy('auth_del_own', 'dashboard_public.messages');
COMMIT;  

