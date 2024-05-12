-- Deploy: schemas/dashboard_public/tables/question_values/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/table

BEGIN;

ALTER TABLE "dashboard_public".question_values ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".question_values ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".question_values
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".question_values (created_by);
CREATE INDEX ON "dashboard_public".question_values (updated_by);
COMMIT;
