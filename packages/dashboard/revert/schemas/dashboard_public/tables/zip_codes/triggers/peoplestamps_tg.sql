-- Revert: schemas/dashboard_public/tables/zip_codes/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".zip_codes DROP COLUMN created_by;
ALTER TABLE "dashboard_public".zip_codes DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".zip_codes;


COMMIT;  

