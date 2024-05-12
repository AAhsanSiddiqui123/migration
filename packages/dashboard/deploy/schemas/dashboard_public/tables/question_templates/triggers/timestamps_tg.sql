-- Deploy: schemas/dashboard_public/tables/question_templates/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;

ALTER TABLE "dashboard_public".question_templates ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".question_templates ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".question_templates ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".question_templates ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".question_templates
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".question_templates (created_at);
CREATE INDEX ON "dashboard_public".question_templates (updated_at);
COMMIT;
