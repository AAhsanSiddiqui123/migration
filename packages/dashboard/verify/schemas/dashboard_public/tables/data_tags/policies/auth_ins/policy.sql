-- Verify: schemas/dashboard_public/tables/data_tags/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.data_tags');
COMMIT;  

