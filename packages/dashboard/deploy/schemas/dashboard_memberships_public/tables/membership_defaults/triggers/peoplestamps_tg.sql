-- Deploy: schemas/dashboard_memberships_public/tables/membership_defaults/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".membership_defaults ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_memberships_public".membership_defaults ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_memberships_public".membership_defaults
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_memberships_public".membership_defaults (created_by);
CREATE INDEX ON "dashboard_memberships_public".membership_defaults (updated_by);
COMMIT;
