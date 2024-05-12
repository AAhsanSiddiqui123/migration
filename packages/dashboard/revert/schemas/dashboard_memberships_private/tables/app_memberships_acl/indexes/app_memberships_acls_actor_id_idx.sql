-- Revert: schemas/dashboard_memberships_private/tables/app_memberships_acl/indexes/app_memberships_acls_actor_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_private".app_memberships_acls_actor_id_idx;
COMMIT;  

