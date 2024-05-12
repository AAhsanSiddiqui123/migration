-- Deploy: schemas/dashboard_public/tables/tags/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tags/table

BEGIN;

ALTER TABLE "dashboard_public".tags ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".tags ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".tags
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".tags (created_by);
CREATE INDEX ON "dashboard_public".tags (updated_by);
COMMIT;
