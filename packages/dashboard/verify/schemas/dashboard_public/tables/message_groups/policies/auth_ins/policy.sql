-- Verify: schemas/dashboard_public/tables/message_groups/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.message_groups');
COMMIT;  

