-- Deploy launchql-snippets:migrate/trigger-updates to pg

BEGIN;

CREATE FUNCTION dashboard_private.location_types_ref_tg ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (NEW.ref IS NULL AND NEW.name IS NOT NULL) THEN 
        NEW.ref = NEW.name;
    END IF;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE TRIGGER _0000_sync_fields
    BEFORE INSERT OR UPDATE ON "dashboard_public".location_types
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.location_types_ref_tg ();

CREATE TRIGGER _0000_sync_fields
    BEFORE INSERT OR UPDATE ON "dashboard_public".user_location_types
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.location_types_ref_tg ();

COMMIT;
