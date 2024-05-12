-- Deploy: schemas/dashboard_public/tables/global_languages/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;

ALTER TABLE "dashboard_public".global_languages ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".global_languages ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".global_languages
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".global_languages (created_by);
CREATE INDEX ON "dashboard_public".global_languages (updated_by);
COMMIT;
