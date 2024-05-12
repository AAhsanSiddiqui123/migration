-- Revert: schemas/dashboard_private/procedures/uuid_generate_v4/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_private".uuid_generate_v4;
COMMIT;  

