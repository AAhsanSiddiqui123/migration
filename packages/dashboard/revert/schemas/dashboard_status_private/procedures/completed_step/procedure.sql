-- Revert: schemas/dashboard_status_private/procedures/completed_step/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_status_private".completed_step;
COMMIT;  

