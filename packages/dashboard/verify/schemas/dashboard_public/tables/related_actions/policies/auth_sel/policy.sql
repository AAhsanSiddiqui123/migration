-- Verify: schemas/dashboard_public/tables/related_actions/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.related_actions');
COMMIT;  

