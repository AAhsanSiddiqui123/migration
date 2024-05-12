-- Revert: schemas/dashboard_public/tables/track_types/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".track_types;
COMMIT;  

