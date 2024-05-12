-- Revert: schemas/dashboard_roles_public/procedures/send_account_deletion_email/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".send_account_deletion_email;
COMMIT;  

