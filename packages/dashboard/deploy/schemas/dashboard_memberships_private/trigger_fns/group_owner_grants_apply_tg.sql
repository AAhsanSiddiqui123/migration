-- Deploy: schemas/dashboard_memberships_private/trigger_fns/group_owner_grants_apply_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema

BEGIN;

CREATE FUNCTION "dashboard_memberships_private".group_owner_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "dashboard_memberships_public".group_memberships 
            SET is_owner = TRUE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    ELSE 
        UPDATE "dashboard_memberships_public".group_memberships 
            SET is_owner = FALSE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
        IF (
            SELECT count(*) < 1 FROM "dashboard_memberships_public".group_memberships 
            WHERE is_owner = TRUE
            AND entity_id = NEW.entity_id
        ) THEN 
            RAISE EXCEPTION 'REQUIRES_ONE_OWNER';
        END IF;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;
