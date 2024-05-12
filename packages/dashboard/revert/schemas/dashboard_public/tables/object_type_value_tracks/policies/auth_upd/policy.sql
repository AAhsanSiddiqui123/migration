-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".object_type_value_tracks;
COMMIT;  

