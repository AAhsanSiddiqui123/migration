-- Revert: schemas/dashboard_memberships_private/procedures/group_memberships_ids/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".group_memberships_ids;
COMMIT;  

