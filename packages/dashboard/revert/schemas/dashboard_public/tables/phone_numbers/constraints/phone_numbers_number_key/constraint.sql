-- Revert: schemas/dashboard_public/tables/phone_numbers/constraints/phone_numbers_number_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers 
    DROP CONSTRAINT phone_numbers_number_key;

COMMIT;  

