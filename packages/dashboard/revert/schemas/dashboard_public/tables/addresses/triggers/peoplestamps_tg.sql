-- Revert: schemas/dashboard_public/tables/addresses/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses DROP COLUMN created_by;
ALTER TABLE "dashboard_public".addresses DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".addresses;


COMMIT;  

