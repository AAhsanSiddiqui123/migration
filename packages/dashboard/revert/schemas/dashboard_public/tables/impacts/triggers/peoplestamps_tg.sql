-- Revert: schemas/dashboard_public/tables/impacts/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN created_by;
ALTER TABLE "dashboard_public".impacts DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".impacts;


COMMIT;  

