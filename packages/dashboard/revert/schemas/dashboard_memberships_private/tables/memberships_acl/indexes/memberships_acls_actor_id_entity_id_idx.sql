-- Revert: schemas/dashboard_memberships_private/tables/memberships_acl/indexes/memberships_acls_actor_id_entity_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_private".memberships_acls_actor_id_entity_id_idx;
COMMIT;  

