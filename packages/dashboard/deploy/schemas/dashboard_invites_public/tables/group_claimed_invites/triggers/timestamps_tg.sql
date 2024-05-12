-- Deploy: schemas/dashboard_invites_public/tables/group_claimed_invites/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_claimed_invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".group_claimed_invites ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_invites_public".group_claimed_invites ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_invites_public".group_claimed_invites ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_invites_public".group_claimed_invites ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_invites_public".group_claimed_invites
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_invites_public".group_claimed_invites (created_at);
CREATE INDEX ON "dashboard_invites_public".group_claimed_invites (updated_at);
COMMIT;
