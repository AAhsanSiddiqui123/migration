-- Verify: schemas/dashboard_public/tables/track_actions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.track_actions');
COMMIT;  

