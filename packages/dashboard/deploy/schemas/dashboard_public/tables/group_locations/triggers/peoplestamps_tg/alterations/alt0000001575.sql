-- Deploy: schemas/dashboard_public/tables/group_locations/triggers/peoplestamps_tg/alterations/alt0000001575 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table

BEGIN;

ALTER TABLE "dashboard_public".group_locations ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".group_locations ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".group_locations
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".group_locations (created_by);
CREATE INDEX ON "dashboard_public".group_locations (updated_by);
COMMIT;
