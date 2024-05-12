-- Deploy: schemas/dashboard_public/tables/notification_preferences/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".notification_preferences ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".notification_preferences ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".notification_preferences ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".notification_preferences
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".notification_preferences (created_at);
CREATE INDEX ON "dashboard_public".notification_preferences (updated_at);
COMMIT;
