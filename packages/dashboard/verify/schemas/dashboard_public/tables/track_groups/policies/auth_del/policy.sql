-- Verify: schemas/dashboard_public/tables/track_groups/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.track_groups');
COMMIT;  

