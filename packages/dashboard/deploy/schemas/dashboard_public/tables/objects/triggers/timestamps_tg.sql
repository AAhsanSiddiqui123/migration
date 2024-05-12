-- Deploy: schemas/dashboard_public/tables/objects/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table

BEGIN;

ALTER TABLE "dashboard_public".objects ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".objects ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".objects ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".objects ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".objects
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".objects (created_at);
CREATE INDEX ON "dashboard_public".objects (updated_at);
COMMIT;
