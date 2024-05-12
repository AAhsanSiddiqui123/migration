-- Verify: schemas/dashboard_public/tables/track_groups/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.track_groups');
COMMIT;  

