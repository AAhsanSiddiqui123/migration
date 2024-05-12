-- Deploy: schemas/dashboard_public/tables/track_groups/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table

BEGIN;

ALTER TABLE "dashboard_public".track_groups ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".track_groups ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".track_groups
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".track_groups (created_by);
CREATE INDEX ON "dashboard_public".track_groups (updated_by);
COMMIT;
