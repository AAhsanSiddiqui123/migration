-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".object_type_value_tracks FROM authenticated;
COMMIT;  

