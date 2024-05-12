-- Verify: schemas/dashboard_public/tables/track_actions/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.track_actions');
COMMIT;  

