-- Revert: schemas/dashboard_public/tables/actions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN created_by;
ALTER TABLE "dashboard_public".actions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".actions;


COMMIT;  

