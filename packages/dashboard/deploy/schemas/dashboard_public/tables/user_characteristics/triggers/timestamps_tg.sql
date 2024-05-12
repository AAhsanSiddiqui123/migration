-- Deploy: schemas/dashboard_public/tables/user_characteristics/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table

BEGIN;

ALTER TABLE "dashboard_public".user_characteristics ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_characteristics ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".user_characteristics ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_characteristics ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".user_characteristics
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".user_characteristics (created_at);
CREATE INDEX ON "dashboard_public".user_characteristics (updated_at);
COMMIT;
