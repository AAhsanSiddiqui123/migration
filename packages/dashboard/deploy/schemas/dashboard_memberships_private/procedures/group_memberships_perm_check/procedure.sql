-- Deploy: schemas/dashboard_memberships_private/procedures/group_memberships_perm_check/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema

BEGIN;

CREATE FUNCTION "dashboard_memberships_private".group_memberships_perm_check (perm text, entity_id uuid, actor_id uuid DEFAULT jwt_public.current_user_id())
  RETURNS boolean
AS $CODEZ$
SELECT EXISTS (
      SELECT 1 FROM "dashboard_memberships_public".group_memberships m,
		      "dashboard_permissions_public".group_member_permissions p
          WHERE
          	p.name = perm
          AND m.permissions & p.bitstr = p.bitstr
          AND m.entity_id = group_memberships_perm_check.entity_id
          AND m.actor_id = group_memberships_perm_check.actor_id
);
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "dashboard_memberships_private".group_memberships_perm_check TO authenticated;
COMMIT;
