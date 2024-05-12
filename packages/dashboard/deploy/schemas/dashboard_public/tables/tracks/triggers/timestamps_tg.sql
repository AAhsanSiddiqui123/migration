-- Deploy: schemas/dashboard_public/tables/tracks/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;

ALTER TABLE "dashboard_public".tracks ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".tracks ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".tracks ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".tracks ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".tracks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".tracks (created_at);
CREATE INDEX ON "dashboard_public".tracks (updated_at);
COMMIT;
