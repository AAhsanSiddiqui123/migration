-- Deploy: schemas/dashboard_public/tables/addresses/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;

ALTER TABLE "dashboard_public".addresses ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".addresses ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".addresses ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".addresses ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".addresses
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".addresses (created_at);
CREATE INDEX ON "dashboard_public".addresses (updated_at);
COMMIT;
