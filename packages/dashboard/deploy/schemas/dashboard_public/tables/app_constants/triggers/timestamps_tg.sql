-- Deploy: schemas/dashboard_public/tables/app_constants/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;

ALTER TABLE "dashboard_public".app_constants ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".app_constants ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".app_constants ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".app_constants ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".app_constants
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".app_constants (created_at);
CREATE INDEX ON "dashboard_public".app_constants (updated_at);
COMMIT;
