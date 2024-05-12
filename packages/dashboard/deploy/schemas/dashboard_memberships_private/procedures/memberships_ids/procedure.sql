-- Deploy: schemas/dashboard_memberships_private/procedures/memberships_ids/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema

BEGIN;

CREATE FUNCTION "dashboard_memberships_private".memberships_ids ()
  RETURNS uuid[]
AS $CODEZ$
    SELECT array_agg(m.entity_id) FROM "dashboard_memberships_public".memberships m
        WHERE m.actor_id = jwt_public.current_user_id()
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "dashboard_memberships_private".memberships_ids TO authenticated;
COMMIT;
