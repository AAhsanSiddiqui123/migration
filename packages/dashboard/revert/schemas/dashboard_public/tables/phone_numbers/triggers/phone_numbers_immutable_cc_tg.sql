-- Revert: schemas/dashboard_public/tables/phone_numbers/triggers/phone_numbers_immutable_cc_tg from pg

BEGIN;
DROP TRIGGER phone_numbers_immutable_cc_tg ON "dashboard_public".phone_numbers;
COMMIT;  

