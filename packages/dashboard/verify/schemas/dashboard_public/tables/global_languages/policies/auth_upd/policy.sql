-- Verify: schemas/dashboard_public/tables/global_languages/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.global_languages');
COMMIT;  

