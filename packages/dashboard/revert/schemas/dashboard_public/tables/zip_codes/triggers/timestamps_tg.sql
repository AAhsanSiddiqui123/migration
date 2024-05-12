-- Revert: schemas/dashboard_public/tables/zip_codes/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".zip_codes DROP COLUMN created_at;
ALTER TABLE "dashboard_public".zip_codes DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".zip_codes;

COMMIT;  

