-- Deploy: schemas/dashboard_public/tables/tracks/constraints/tracks_object_type_id_fkey/alterations/alt0000000961 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/constraints/tracks_object_type_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT tracks_object_type_id_fkey ON "dashboard_public".tracks IS E'@omit manyToMany';
COMMIT;
