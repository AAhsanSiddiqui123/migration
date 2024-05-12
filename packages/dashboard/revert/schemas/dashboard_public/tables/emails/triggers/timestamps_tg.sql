-- Revert: schemas/dashboard_public/tables/emails/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".emails DROP COLUMN created_at;
ALTER TABLE "dashboard_public".emails DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".emails;

COMMIT;  

