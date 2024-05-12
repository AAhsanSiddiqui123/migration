-- Verify: schemas/dashboard_public/tables/track_types/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.track_types');
COMMIT;  

