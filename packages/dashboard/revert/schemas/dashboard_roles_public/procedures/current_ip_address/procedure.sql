-- Revert: schemas/dashboard_roles_public/procedures/current_ip_address/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".current_ip_address;

COMMIT;  

