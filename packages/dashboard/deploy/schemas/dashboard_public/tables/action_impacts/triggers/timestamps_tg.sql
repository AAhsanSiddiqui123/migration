-- Deploy: schemas/dashboard_public/tables/action_impacts/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table

BEGIN;

ALTER TABLE "dashboard_public".action_impacts ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".action_impacts ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".action_impacts ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".action_impacts ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".action_impacts
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".action_impacts (created_at);
CREATE INDEX ON "dashboard_public".action_impacts (updated_at);
COMMIT;
