-- Deploy: schemas/dashboard_public/tables/question_values/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/table

BEGIN;

ALTER TABLE "dashboard_public".question_values ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".question_values ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".question_values ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".question_values ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".question_values
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".question_values (created_at);
CREATE INDEX ON "dashboard_public".question_values (updated_at);
COMMIT;
