-- Verify: schemas/dashboard_public/tables/group_goals/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.group_goals');
COMMIT;  

