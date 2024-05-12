-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".object_type_value_tracks FROM authenticated;
COMMIT;  

