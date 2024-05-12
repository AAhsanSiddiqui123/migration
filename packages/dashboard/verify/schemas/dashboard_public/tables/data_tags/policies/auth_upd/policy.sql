-- Verify: schemas/dashboard_public/tables/data_tags/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.data_tags');
COMMIT;  

