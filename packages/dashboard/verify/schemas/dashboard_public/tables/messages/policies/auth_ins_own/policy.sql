-- Verify: schemas/dashboard_public/tables/messages/policies/auth_ins_own/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_own', 'dashboard_public.messages');
COMMIT;  

