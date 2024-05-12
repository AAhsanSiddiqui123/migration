-- Revert: schemas/dashboard_memberships_private/procedures/memberships_perm_ids/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".memberships_perm_ids;
COMMIT;  

