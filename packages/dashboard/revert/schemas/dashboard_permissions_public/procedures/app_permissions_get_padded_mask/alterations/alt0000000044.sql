-- Revert: schemas/dashboard_permissions_public/procedures/app_permissions_get_padded_mask/alterations/alt0000000044 from pg

BEGIN;


DROP FUNCTION "dashboard_permissions_public".app_permissions_get_padded_mask;

COMMIT;  

