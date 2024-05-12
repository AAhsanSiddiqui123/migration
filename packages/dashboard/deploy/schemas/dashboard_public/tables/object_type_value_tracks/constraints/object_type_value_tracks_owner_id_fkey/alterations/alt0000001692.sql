-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/constraints/object_type_value_tracks_owner_id_fkey/alterations/alt0000001692 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/constraints/object_type_value_tracks_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT object_type_value_tracks_owner_id_fkey ON "dashboard_public".object_type_value_tracks IS E'@omit manyToMany';
COMMIT;
