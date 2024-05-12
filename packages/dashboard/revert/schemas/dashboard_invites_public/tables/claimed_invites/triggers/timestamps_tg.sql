-- Revert: schemas/dashboard_invites_public/tables/claimed_invites/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".claimed_invites DROP COLUMN created_at;
ALTER TABLE "dashboard_invites_public".claimed_invites DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_invites_public".claimed_invites;

COMMIT;  

