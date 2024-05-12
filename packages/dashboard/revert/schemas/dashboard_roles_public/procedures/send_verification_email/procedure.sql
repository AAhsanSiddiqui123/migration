-- Revert: schemas/dashboard_roles_public/procedures/send_verification_email/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".send_verification_email;
COMMIT;  

