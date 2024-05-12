-- Deploy: schemas/dashboard_public/tables/question_templates/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;

ALTER TABLE "dashboard_public".question_templates ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".question_templates ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".question_templates
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".question_templates (created_by);
CREATE INDEX ON "dashboard_public".question_templates (updated_by);
COMMIT;
