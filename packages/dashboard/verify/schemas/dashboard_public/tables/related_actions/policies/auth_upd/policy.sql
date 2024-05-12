-- Verify: schemas/dashboard_public/tables/related_actions/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.related_actions');
COMMIT;  

