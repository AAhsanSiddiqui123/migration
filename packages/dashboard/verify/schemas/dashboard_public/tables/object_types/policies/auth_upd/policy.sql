-- Verify: schemas/dashboard_public/tables/object_types/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.object_types');
COMMIT;  

