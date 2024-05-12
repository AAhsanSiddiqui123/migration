-- Deploy: schemas/dashboard_public/tables/units/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table

BEGIN;

ALTER TABLE "dashboard_public".units ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".units ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".units ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".units ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".units
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".units (created_at);
CREATE INDEX ON "dashboard_public".units (updated_at);
COMMIT;
