-- Revert: schemas/dashboard_roles_public/procedures/verify_email/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".verify_email;
COMMIT;  

