-- Deploy: schemas/dashboard_invites_public/tables/invites/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".invites ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_invites_public".invites ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_invites_public".invites ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_invites_public".invites ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_invites_public".invites
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_invites_public".invites (created_at);
CREATE INDEX ON "dashboard_invites_public".invites (updated_at);
COMMIT;
