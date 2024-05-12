-- Revert: schemas/dashboard_memberships_private/procedures/memberships_mask_check/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".memberships_mask_check;
COMMIT;  

