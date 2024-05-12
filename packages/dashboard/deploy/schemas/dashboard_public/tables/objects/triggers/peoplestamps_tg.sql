-- Deploy: schemas/dashboard_public/tables/objects/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table

BEGIN;

ALTER TABLE "dashboard_public".objects ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".objects ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".objects
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".objects (created_by);
CREATE INDEX ON "dashboard_public".objects (updated_by);
COMMIT;
