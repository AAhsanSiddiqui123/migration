-- Revert: schemas/dashboard_public/tables/track_types/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".track_types;
COMMIT;  

