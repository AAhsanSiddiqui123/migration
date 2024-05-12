-- Deploy: schemas/dashboard_public/tables/impacts/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE "dashboard_public".impacts ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".impacts ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".impacts
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".impacts (created_by);
CREATE INDEX ON "dashboard_public".impacts (updated_by);
COMMIT;
