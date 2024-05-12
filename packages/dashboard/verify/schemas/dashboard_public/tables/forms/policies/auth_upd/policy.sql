-- Verify: schemas/dashboard_public/tables/forms/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.forms');
COMMIT;  

