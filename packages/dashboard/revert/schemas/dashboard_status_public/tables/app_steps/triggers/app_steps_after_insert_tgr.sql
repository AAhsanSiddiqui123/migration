-- Revert: schemas/dashboard_status_public/tables/app_steps/triggers/app_steps_after_insert_tgr from pg

BEGIN;


DROP TRIGGER app_steps_after_insert_tgr
    ON "dashboard_status_public".app_steps;
COMMIT;  

