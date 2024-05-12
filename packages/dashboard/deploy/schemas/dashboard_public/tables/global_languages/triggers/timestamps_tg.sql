-- Deploy: schemas/dashboard_public/tables/global_languages/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;

ALTER TABLE "dashboard_public".global_languages ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".global_languages ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".global_languages ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".global_languages ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".global_languages
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".global_languages (created_at);
CREATE INDEX ON "dashboard_public".global_languages (updated_at);
COMMIT;
