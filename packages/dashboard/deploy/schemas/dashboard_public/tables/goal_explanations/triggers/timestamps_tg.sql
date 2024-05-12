-- Deploy: schemas/dashboard_public/tables/goal_explanations/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table

BEGIN;

ALTER TABLE "dashboard_public".goal_explanations ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".goal_explanations ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".goal_explanations ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".goal_explanations ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".goal_explanations
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".goal_explanations (created_at);
CREATE INDEX ON "dashboard_public".goal_explanations (updated_at);
COMMIT;
