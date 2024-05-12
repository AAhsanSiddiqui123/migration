-- Verify: schemas/dashboard_public/tables/track_locations/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.track_locations');
COMMIT;  

