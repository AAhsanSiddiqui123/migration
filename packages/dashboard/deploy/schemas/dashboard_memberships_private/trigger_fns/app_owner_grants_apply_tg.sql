-- Deploy: schemas/dashboard_memberships_private/trigger_fns/app_owner_grants_apply_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema

BEGIN;

CREATE FUNCTION "dashboard_memberships_private".app_owner_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "dashboard_memberships_public".app_memberships 
            SET is_owner = TRUE
        WHERE actor_id = NEW.actor_id; 
    ELSE 
        UPDATE "dashboard_memberships_public".app_memberships 
            SET is_owner = FALSE
        WHERE actor_id = NEW.actor_id; 
        IF (
            SELECT count(*) < 1 FROM "dashboard_memberships_public".app_memberships
            WHERE is_owner = TRUE
        ) THEN 
            RAISE EXCEPTION 'REQUIRES_ONE_OWNER';
        END IF;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;
