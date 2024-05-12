-- Revert: schemas/dashboard_permissions_public/procedures/app_permissions_get_by_mask/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_permissions_public".app_permissions_get_by_mask;
COMMIT;  

