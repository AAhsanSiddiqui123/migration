-- Revert: schemas/dashboard_roles_public/procedures/one_time_token/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".one_time_token;
COMMIT;  

