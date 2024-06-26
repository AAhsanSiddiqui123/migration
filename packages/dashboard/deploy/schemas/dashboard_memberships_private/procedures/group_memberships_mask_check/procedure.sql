-- Deploy: schemas/dashboard_memberships_private/procedures/group_memberships_mask_check/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema

BEGIN;

CREATE FUNCTION "dashboard_memberships_private".group_memberships_mask_check (mask bit varying, entity_id uuid, actor_id uuid DEFAULT jwt_public.current_user_id())
  RETURNS boolean
AS $CODEZ$
    SELECT EXISTS (
        SELECT 1 FROM "dashboard_memberships_public".group_memberships m
            WHERE m.permissions & mask = mask
            AND m.entity_id = group_memberships_mask_check.entity_id
            AND m.actor_id = group_memberships_mask_check.actor_id
    );
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "dashboard_memberships_private".group_memberships_mask_check TO authenticated;
COMMIT;
