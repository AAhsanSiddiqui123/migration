-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/constraints/object_type_value_tracks_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_tracks
    ADD CONSTRAINT object_type_value_tracks_pkey PRIMARY KEY (id);
COMMIT;
