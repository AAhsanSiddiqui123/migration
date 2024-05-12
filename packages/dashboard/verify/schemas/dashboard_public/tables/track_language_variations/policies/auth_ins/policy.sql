-- Verify: schemas/dashboard_public/tables/track_language_variations/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.track_language_variations');
COMMIT;  

