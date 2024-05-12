-- Verify: schemas/dashboard_public/tables/action_language_variations/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.action_language_variations');
COMMIT;  

