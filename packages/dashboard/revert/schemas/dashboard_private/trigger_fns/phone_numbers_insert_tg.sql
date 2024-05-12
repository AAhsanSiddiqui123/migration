-- Revert: schemas/dashboard_private/trigger_fns/phone_numbers_insert_tg from pg

BEGIN;


DROP TRIGGER trigger_name
    ON "dashboard_public".phone_numbers;

DROP FUNCTION "dashboard_private".phone_numbers_insert_tg;

COMMIT;  

