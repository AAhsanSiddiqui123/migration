-- Deploy: schemas/dashboard_public/tables/impacts/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE "dashboard_public".impacts ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".impacts ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".impacts ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".impacts ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".impacts
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".impacts (created_at);
CREATE INDEX ON "dashboard_public".impacts (updated_at);
COMMIT;
