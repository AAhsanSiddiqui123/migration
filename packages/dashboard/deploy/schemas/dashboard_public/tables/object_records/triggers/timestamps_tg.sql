-- Deploy: schemas/dashboard_public/tables/object_records/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table

BEGIN;

ALTER TABLE "dashboard_public".object_records ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".object_records ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".object_records ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".object_records ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".object_records
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".object_records (created_at);
CREATE INDEX ON "dashboard_public".object_records (updated_at);
COMMIT;
