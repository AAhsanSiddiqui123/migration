-- Deploy: schemas/dashboard_public/tables/language_dictionary/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table

BEGIN;

ALTER TABLE "dashboard_public".language_dictionary ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".language_dictionary ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".language_dictionary
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".language_dictionary (created_by);
CREATE INDEX ON "dashboard_public".language_dictionary (updated_by);
COMMIT;
