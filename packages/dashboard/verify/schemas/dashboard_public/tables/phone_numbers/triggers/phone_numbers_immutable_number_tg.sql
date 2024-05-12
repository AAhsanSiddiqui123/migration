-- Verify: schemas/dashboard_public/tables/phone_numbers/triggers/phone_numbers_immutable_number_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.phone_numbers_immutable_number_tg');
COMMIT;  

