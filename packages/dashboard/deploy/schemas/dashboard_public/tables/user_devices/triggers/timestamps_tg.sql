-- Deploy: schemas/dashboard_public/tables/user_devices/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table

BEGIN;

ALTER TABLE "dashboard_public".user_devices ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_devices ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".user_devices ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_devices ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".user_devices
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".user_devices (created_at);
CREATE INDEX ON "dashboard_public".user_devices (updated_at);
COMMIT;
