-- Verify: schemas/dashboard_public/tables/related_actions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.related_actions');
COMMIT;  

