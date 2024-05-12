-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_tracks ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".object_type_value_tracks ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".object_type_value_tracks ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".object_type_value_tracks ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".object_type_value_tracks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".object_type_value_tracks (created_at);
CREATE INDEX ON "dashboard_public".object_type_value_tracks (updated_at);
COMMIT;
