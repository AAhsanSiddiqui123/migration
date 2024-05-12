-- Verify: schemas/dashboard_public/tables/user_messages/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.user_messages');
COMMIT;  

