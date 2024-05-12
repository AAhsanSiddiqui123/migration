-- Deploy: schemas/dashboard_public/tables/action_questions/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table

BEGIN;

ALTER TABLE "dashboard_public".action_questions ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".action_questions ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".action_questions ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".action_questions ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".action_questions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".action_questions (created_at);
CREATE INDEX ON "dashboard_public".action_questions (updated_at);
COMMIT;
