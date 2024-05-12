-- Deploy: schemas/dashboard_public/tables/notifications/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;

ALTER TABLE "dashboard_public".notifications ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".notifications ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".notifications ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".notifications ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".notifications
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".notifications (created_at);
CREATE INDEX ON "dashboard_public".notifications (updated_at);
COMMIT;
