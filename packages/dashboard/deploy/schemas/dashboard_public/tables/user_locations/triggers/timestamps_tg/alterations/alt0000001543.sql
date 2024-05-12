-- Deploy: schemas/dashboard_public/tables/user_locations/triggers/timestamps_tg/alterations/alt0000001543 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table

BEGIN;

ALTER TABLE "dashboard_public".user_locations ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_locations ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".user_locations ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_locations ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".user_locations
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".user_locations (created_at);
CREATE INDEX ON "dashboard_public".user_locations (updated_at);
COMMIT;
