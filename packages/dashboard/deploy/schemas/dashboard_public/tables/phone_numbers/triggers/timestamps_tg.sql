-- Deploy: schemas/dashboard_public/tables/phone_numbers/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/phone_numbers/table

BEGIN;

ALTER TABLE "dashboard_public".phone_numbers ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".phone_numbers ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".phone_numbers ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".phone_numbers ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".phone_numbers
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".phone_numbers (created_at);
CREATE INDEX ON "dashboard_public".phone_numbers (updated_at);
COMMIT;
