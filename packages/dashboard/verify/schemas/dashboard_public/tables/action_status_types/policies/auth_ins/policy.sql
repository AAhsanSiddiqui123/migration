-- Verify: schemas/dashboard_public/tables/action_status_types/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.action_status_types');
COMMIT;  

