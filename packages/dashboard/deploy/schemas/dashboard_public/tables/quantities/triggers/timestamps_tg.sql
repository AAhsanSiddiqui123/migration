-- Deploy: schemas/dashboard_public/tables/quantities/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table

BEGIN;

ALTER TABLE "dashboard_public".quantities ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".quantities ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".quantities ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".quantities ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".quantities
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".quantities (created_at);
CREATE INDEX ON "dashboard_public".quantities (updated_at);
COMMIT;
