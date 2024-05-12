-- Verify: schemas/dashboard_public/tables/track_language_variations/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.track_language_variations');
COMMIT;  

