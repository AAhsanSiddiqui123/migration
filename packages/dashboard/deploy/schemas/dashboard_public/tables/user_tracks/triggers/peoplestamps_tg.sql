-- Deploy: schemas/dashboard_public/tables/user_tracks/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table

BEGIN;

ALTER TABLE "dashboard_public".user_tracks ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".user_tracks ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".user_tracks
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".user_tracks (created_by);
CREATE INDEX ON "dashboard_public".user_tracks (updated_by);
COMMIT;
