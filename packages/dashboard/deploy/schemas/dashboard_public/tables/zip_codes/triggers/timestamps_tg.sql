-- Deploy: schemas/dashboard_public/tables/zip_codes/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table

BEGIN;

ALTER TABLE "dashboard_public".zip_codes ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".zip_codes ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".zip_codes ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".zip_codes ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".zip_codes
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".zip_codes (created_at);
CREATE INDEX ON "dashboard_public".zip_codes (updated_at);
COMMIT;
