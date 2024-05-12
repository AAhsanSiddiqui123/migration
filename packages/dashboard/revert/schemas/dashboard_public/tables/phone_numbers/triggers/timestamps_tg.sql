-- Revert: schemas/dashboard_public/tables/phone_numbers/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers DROP COLUMN created_at;
ALTER TABLE "dashboard_public".phone_numbers DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".phone_numbers;

COMMIT;  

