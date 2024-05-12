-- Revert: schemas/dashboard_roles_public/procedures/login_one_time_token/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".login_one_time_token;
COMMIT;  

