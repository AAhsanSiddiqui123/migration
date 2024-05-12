-- Verify: schemas/dashboard_public/tables/user_messages/policies/auth_upd_receiver/policy on pg

BEGIN;
SELECT verify_policy('auth_upd_receiver', 'dashboard_public.user_messages');
COMMIT;  

