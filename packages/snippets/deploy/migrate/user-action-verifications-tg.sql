-- Deploy launchql-snippets:migrate/user-action-verifications-tg to pg

BEGIN;

CREATE OR REPLACE FUNCTION dashboard_private.update_user_actions_after_verify ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN

    UPDATE dashboard_public.user_actions
        SET rejected = NEW.rejected,
            verified = NEW.verified,
            verified_date = NOW()
    WHERE id = NEW.user_action_id;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE
SECURITY DEFINER
;

DROP TRIGGER IF EXISTS _0000_action_verify_set_props ON "dashboard_public".user_action_verifications;

CREATE TRIGGER _0000_action_verify_set_props
    BEFORE INSERT ON "dashboard_public".user_action_verifications
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_user_actions_after_verify ();

---------
---------
---------
---------
---------

CREATE OR REPLACE FUNCTION dashboard_private.update_loc_centroids ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (NEW.poly IS NULL AND NEW.coords IS NOT NULL) THEN 
        -- https://gis.stackexchange.com/questions/247326/create-a-rectangle-around-a-point-in-postgis
        NEW.poly = ST_Envelope(ST_Buffer(NEW.coords,0.00078125));
    END IF;
    IF (NEW.coords IS NULL) THEN 
        NEW.coords = ST_Centroid( NEW.poly );
    END IF;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

COMMIT;
