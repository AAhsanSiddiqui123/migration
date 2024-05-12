-- Deploy: schemas/dashboard_public/tables/notification_preferences/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".notification_preferences ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".notification_preferences
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".notification_preferences (created_by);
CREATE INDEX ON "dashboard_public".notification_preferences (updated_by);
COMMIT;
