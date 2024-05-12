-- Deploy: schemas/dashboard_public/tables/question_types/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table

BEGIN;

ALTER TABLE "dashboard_public".question_types ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".question_types ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".question_types
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".question_types (created_by);
CREATE INDEX ON "dashboard_public".question_types (updated_by);
COMMIT;
