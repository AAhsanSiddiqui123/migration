-- Deploy: schemas/dashboard_public/tables/action_questions/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table

BEGIN;

ALTER TABLE "dashboard_public".action_questions ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".action_questions ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".action_questions
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".action_questions (created_by);
CREATE INDEX ON "dashboard_public".action_questions (updated_by);
COMMIT;
