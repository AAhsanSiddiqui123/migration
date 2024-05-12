-- Deploy: schemas/dashboard_status_public/tables/app_level_requirements/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_level_requirements/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_level_requirements ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_status_public".app_level_requirements ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_status_public".app_level_requirements ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_status_public".app_level_requirements ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_status_public".app_level_requirements
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_status_public".app_level_requirements (created_at);
CREATE INDEX ON "dashboard_status_public".app_level_requirements (updated_at);
COMMIT;
