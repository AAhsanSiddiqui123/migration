-- Deploy: schemas/dashboard_status_public/tables/app_levels/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_levels/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_levels ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_status_public".app_levels ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_status_public".app_levels ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_status_public".app_levels ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_status_public".app_levels
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_status_public".app_levels (created_at);
CREATE INDEX ON "dashboard_status_public".app_levels (updated_at);
COMMIT;
