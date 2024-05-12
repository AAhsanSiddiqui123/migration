-- Revert: schemas/dashboard_roles_public/procedures/verify_totp/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".verify_totp;
COMMIT;  

