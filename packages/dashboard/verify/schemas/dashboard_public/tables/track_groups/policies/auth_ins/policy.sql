-- Verify: schemas/dashboard_public/tables/track_groups/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.track_groups');
COMMIT;  

