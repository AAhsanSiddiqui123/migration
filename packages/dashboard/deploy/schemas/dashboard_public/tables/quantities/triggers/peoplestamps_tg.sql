-- Deploy: schemas/dashboard_public/tables/quantities/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table

BEGIN;

ALTER TABLE "dashboard_public".quantities ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".quantities ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".quantities
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".quantities (created_by);
CREATE INDEX ON "dashboard_public".quantities (updated_by);
COMMIT;
