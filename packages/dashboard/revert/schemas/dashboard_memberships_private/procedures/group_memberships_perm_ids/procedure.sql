-- Revert: schemas/dashboard_memberships_private/procedures/group_memberships_perm_ids/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".group_memberships_perm_ids;
COMMIT;  

