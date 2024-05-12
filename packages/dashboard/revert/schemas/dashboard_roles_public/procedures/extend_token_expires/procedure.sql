-- Revert: schemas/dashboard_roles_public/procedures/extend_token_expires/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".extend_token_expires;
COMMIT;  

