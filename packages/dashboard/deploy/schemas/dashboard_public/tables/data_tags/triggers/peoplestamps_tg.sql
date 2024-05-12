-- Deploy: schemas/dashboard_public/tables/data_tags/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tags/table

BEGIN;

ALTER TABLE "dashboard_public".data_tags ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".data_tags ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".data_tags
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".data_tags (created_by);
CREATE INDEX ON "dashboard_public".data_tags (updated_by);
COMMIT;
