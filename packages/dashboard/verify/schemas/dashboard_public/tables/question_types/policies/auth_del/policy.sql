-- Verify: schemas/dashboard_public/tables/question_types/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.question_types');
COMMIT;  

