-- Revert: schemas/dashboard_public/tables/quantities/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities DROP COLUMN created_at;
ALTER TABLE "dashboard_public".quantities DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".quantities;

COMMIT;  

