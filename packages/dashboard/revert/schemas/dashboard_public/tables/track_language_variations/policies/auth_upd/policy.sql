-- Revert: schemas/dashboard_public/tables/track_language_variations/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".track_language_variations;
COMMIT;  

