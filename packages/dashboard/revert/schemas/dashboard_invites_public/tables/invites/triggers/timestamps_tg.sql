-- Revert: schemas/dashboard_invites_public/tables/invites/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites DROP COLUMN created_at;
ALTER TABLE "dashboard_invites_public".invites DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_invites_public".invites;

COMMIT;  

