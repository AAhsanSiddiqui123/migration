-- Revert: schemas/dashboard_roles_public/procedures/current_user_agent/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".current_user_agent;

COMMIT;  

