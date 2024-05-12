-- Deploy: schemas/dashboard_public/tables/action_goals/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/table

BEGIN;

ALTER TABLE "dashboard_public".action_goals ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".action_goals ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".action_goals ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".action_goals ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".action_goals
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".action_goals (created_at);
CREATE INDEX ON "dashboard_public".action_goals (updated_at);
COMMIT;
