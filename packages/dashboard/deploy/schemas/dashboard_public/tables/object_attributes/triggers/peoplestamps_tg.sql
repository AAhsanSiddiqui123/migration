-- Deploy: schemas/dashboard_public/tables/object_attributes/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table

BEGIN;

ALTER TABLE "dashboard_public".object_attributes ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".object_attributes ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".object_attributes
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".object_attributes (created_by);
CREATE INDEX ON "dashboard_public".object_attributes (updated_by);
COMMIT;
