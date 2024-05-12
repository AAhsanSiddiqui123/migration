-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".object_type_value_tracks FROM authenticated;
COMMIT;  

