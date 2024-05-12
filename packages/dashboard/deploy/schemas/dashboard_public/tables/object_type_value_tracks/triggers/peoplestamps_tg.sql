-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_tracks ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".object_type_value_tracks ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".object_type_value_tracks
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".object_type_value_tracks (created_by);
CREATE INDEX ON "dashboard_public".object_type_value_tracks (updated_by);
COMMIT;
