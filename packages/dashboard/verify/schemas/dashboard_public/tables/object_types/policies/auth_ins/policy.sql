-- Verify: schemas/dashboard_public/tables/object_types/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.object_types');
COMMIT;  

