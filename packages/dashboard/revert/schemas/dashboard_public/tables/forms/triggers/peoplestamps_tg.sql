-- Revert: schemas/dashboard_public/tables/forms/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".forms DROP COLUMN created_by;
ALTER TABLE "dashboard_public".forms DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".forms;


COMMIT;  

