-- Deploy: schemas/dashboard_public/tables/question_types/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table

BEGIN;

ALTER TABLE "dashboard_public".question_types ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".question_types ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".question_types ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".question_types ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".question_types
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".question_types (created_at);
CREATE INDEX ON "dashboard_public".question_types (updated_at);
COMMIT;
