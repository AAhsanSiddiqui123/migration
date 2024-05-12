-- Revert: schemas/dashboard_public/tables/track_language_variations/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".track_language_variations;
COMMIT;  

