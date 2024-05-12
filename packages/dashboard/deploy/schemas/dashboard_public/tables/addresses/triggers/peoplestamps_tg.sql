-- Deploy: schemas/dashboard_public/tables/addresses/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;

ALTER TABLE "dashboard_public".addresses ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".addresses ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".addresses
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".addresses (created_by);
CREATE INDEX ON "dashboard_public".addresses (updated_by);
COMMIT;
