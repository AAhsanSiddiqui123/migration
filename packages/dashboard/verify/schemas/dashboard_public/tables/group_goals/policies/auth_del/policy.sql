-- Verify: schemas/dashboard_public/tables/group_goals/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.group_goals');
COMMIT;  

