-- Deploy: schemas/dashboard_memberships_private/trigger_fns/app_memberships_delete_acl_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_private/tables/app_memberships_acl/table

BEGIN;

CREATE FUNCTION "dashboard_memberships_private".app_memberships_delete_acl_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_num_updated int;
BEGIN
    DELETE FROM "dashboard_memberships_private".app_memberships_acl 
        WHERE actor_id = OLD.actor_id;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;
