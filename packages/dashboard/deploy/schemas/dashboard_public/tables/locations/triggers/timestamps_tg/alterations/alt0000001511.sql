-- Deploy: schemas/dashboard_public/tables/locations/triggers/timestamps_tg/alterations/alt0000001511 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;

ALTER TABLE "dashboard_public".locations ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".locations ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".locations ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".locations ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".locations
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".locations (created_at);
CREATE INDEX ON "dashboard_public".locations (updated_at);
COMMIT;
