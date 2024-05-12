-- Deploy: schemas/dashboard_public/tables/user_forms/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table

BEGIN;

ALTER TABLE "dashboard_public".user_forms ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_forms ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".user_forms ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_forms ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".user_forms
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".user_forms (created_at);
CREATE INDEX ON "dashboard_public".user_forms (updated_at);
COMMIT;
