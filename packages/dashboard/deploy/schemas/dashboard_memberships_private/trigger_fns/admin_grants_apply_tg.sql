-- Deploy: schemas/dashboard_memberships_private/trigger_fns/admin_grants_apply_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema

BEGIN;

CREATE FUNCTION "dashboard_memberships_private".admin_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "dashboard_memberships_public".memberships 
            SET is_admin = TRUE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    ELSE 
        UPDATE "dashboard_memberships_public".memberships 
            SET is_admin = FALSE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id
        AND is_owner = FALSE; 
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;
