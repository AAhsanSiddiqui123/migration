-- Revert: schemas/dashboard_public/tables/forms/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".forms DROP COLUMN created_at;
ALTER TABLE "dashboard_public".forms DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".forms;

COMMIT;  

