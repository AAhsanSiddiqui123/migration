-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".object_type_value_tracks;
COMMIT;  

