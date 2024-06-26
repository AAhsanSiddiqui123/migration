-- Deploy: schemas/dashboard_memberships_private/trigger_fns/memberships_itg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema

BEGIN;

CREATE FUNCTION "dashboard_memberships_private".memberships_itg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    bitlen int = bit_length(NEW.permissions);
    defaults bit varying;
    memdefs "dashboard_memberships_public".membership_defaults;
BEGIN
    SELECT * FROM
        "dashboard_memberships_public".membership_defaults t 
        WHERE t.entity_id = NEW.entity_id
    INTO memdefs;
    IF (FOUND) THEN 
        NEW.is_approved = memdefs.is_approved;
    END IF;
    IF (NEW.is_owner IS TRUE) THEN 
        NEW.is_admin = TRUE;
        NEW.is_approved = TRUE;
        NEW.is_disabled = FALSE;
        NEW.is_banned = FALSE;
    END IF;
    SELECT (
        NEW.is_approved IS TRUE
    AND
        NEW.is_disabled IS FALSE
    AND
        NEW.is_banned IS FALSE 
    ) INTO NEW.is_active;
    SELECT permissions FROM
        "dashboard_permissions_public".membership_permission_defaults t 
        WHERE t.entity_id = NEW.entity_id
    INTO defaults;
    IF (NOT FOUND) THEN 
        NEW.granted = lpad('', bitlen::int, '0');
    ELSE
        NEW.granted = defaults;
    END IF;
    IF (NEW.is_admin IS TRUE OR NEW.is_owner IS TRUE) THEN 
        NEW.permissions = lpad('', bitlen::int, '1');
    ELSE
        NEW.permissions = NEW.granted;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;
