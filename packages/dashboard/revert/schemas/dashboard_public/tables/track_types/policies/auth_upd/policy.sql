-- Revert: schemas/dashboard_public/tables/track_types/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".track_types;
COMMIT;  

