-- Revert: schemas/dashboard_status_private/procedures/incompleted_step/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_status_private".incompleted_step;
COMMIT;  

