-- Verify: schemas/dashboard_public/tables/user_messages/policies/auth_ins_sender_create/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_sender_create', 'dashboard_public.user_messages');
COMMIT;  

