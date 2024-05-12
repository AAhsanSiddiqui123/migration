-- Revert: schemas/dashboard_private/trigger_fns/emails_insert_tg from pg

BEGIN;


DROP TRIGGER trigger_name
    ON "dashboard_public".emails;

DROP FUNCTION "dashboard_private".emails_insert_tg;

COMMIT;  

