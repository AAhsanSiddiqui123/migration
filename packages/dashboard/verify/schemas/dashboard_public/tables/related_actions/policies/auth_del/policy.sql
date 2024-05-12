-- Verify: schemas/dashboard_public/tables/related_actions/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.related_actions');
COMMIT;  

