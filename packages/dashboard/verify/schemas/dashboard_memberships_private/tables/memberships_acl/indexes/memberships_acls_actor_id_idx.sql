-- Verify: schemas/dashboard_memberships_private/tables/memberships_acl/indexes/memberships_acls_actor_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_private.memberships_acl', 'memberships_acls_actor_id_idx');
COMMIT;  

