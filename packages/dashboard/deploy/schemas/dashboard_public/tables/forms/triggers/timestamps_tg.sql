-- Deploy: schemas/dashboard_public/tables/forms/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table

BEGIN;

ALTER TABLE "dashboard_public".forms ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".forms ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".forms ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".forms ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".forms
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".forms (created_at);
CREATE INDEX ON "dashboard_public".forms (updated_at);
COMMIT;
