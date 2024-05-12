-- Revert: schemas/dashboard_memberships_private/procedures/app_memberships_mask_check/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".app_memberships_mask_check;
COMMIT;  

