-- Verify: schemas/dashboard_public/tables/object_attributes/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.object_attributes');
COMMIT;  

