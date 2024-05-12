-- Revert: schemas/dashboard_public/tables/track_language_variations/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".track_language_variations;
COMMIT;  

