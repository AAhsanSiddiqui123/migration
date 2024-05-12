-- Revert: schemas/dashboard_public/tables/units/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".units DROP COLUMN created_by;
ALTER TABLE "dashboard_public".units DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".units;


COMMIT;  

