-- Revert: schemas/dashboard_public/tables/goals/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN created_by;
ALTER TABLE "dashboard_public".goals DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".goals;


COMMIT;  

