-- Verify: schemas/dashboard_public/tables/messages/policies/auth_upd_own/policy on pg

BEGIN;
SELECT verify_policy('auth_upd_own', 'dashboard_public.messages');
COMMIT;  

