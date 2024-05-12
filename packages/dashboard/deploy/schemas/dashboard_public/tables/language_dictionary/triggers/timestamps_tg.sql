-- Deploy: schemas/dashboard_public/tables/language_dictionary/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table

BEGIN;

ALTER TABLE "dashboard_public".language_dictionary ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".language_dictionary ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".language_dictionary ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".language_dictionary ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".language_dictionary
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".language_dictionary (created_at);
CREATE INDEX ON "dashboard_public".language_dictionary (updated_at);
COMMIT;
