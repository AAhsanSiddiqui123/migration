-- Verify: schemas/dashboard_public/tables/impact_language_variations/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.impact_language_variations');
COMMIT;  

