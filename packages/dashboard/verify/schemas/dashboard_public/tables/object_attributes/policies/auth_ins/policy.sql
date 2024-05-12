-- Verify: schemas/dashboard_public/tables/object_attributes/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.object_attributes');
COMMIT;  

