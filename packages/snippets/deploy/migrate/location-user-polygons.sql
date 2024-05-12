-- Deploy launchql-snippets:migrate/location-user-polygons to pg

BEGIN;

-- CREATE OR REPLACE FUNCTION dashboard_private.update_user_bounds (v_user_id uuid)
--     RETURNS void
--     AS $LQLCODEZ$

-- DECLARE
--    v_collection geometry;
-- BEGIN

--     -- bounds
--     UPDATE dashboard_public.user_settings 
--         SET bounds = NULL
--     WHERE user_id = v_user_id;

--     SELECT ST_ForceCollection (ST_Collect ( l.poly ))
--         FROM dashboard_public.users a
--         INNER JOIN dashboard_public.user_locations al ON (a.id = al.user_id)
--         INNER JOIN dashboard_public.locations l ON (l.id = al.location_id)
--         INNER JOIN dashboard_public.user_location_types lt ON (al.type_id = lt.id)
--         WHERE a.id = v_user_id
--         AND lt.ref = 'HOME'
--     INTO v_collection;

--     UPDATE dashboard_public.user_settings 
--         SET bounds = v_collection
--     WHERE user_id = v_user_id;

--     -- close_bounds
--     UPDATE dashboard_public.user_settings 
--         SET close_bounds = NULL
--     WHERE user_id = v_user_id;

--     SELECT ST_ForceCollection (ST_Collect ( l.poly ))
--         FROM dashboard_public.users a
--         INNER JOIN dashboard_public.user_locations al ON (a.id = al.user_id)
--         INNER JOIN dashboard_public.locations l ON (l.id = al.location_id)
--         INNER JOIN dashboard_public.user_location_types lt ON (al.type_id = lt.id)
--         WHERE a.id = v_user_id
--         AND lt.ref in ('HOME', 'WORK', 'EXERCISE', 'NEIGHBORHOOD', 'FRIENDS', 'FAMILY') AND lt.ref != 'TEMPORARY'
--     INTO v_collection;

--     UPDATE dashboard_public.user_settings 
--         SET close_bounds = v_collection
--     WHERE user_id = v_user_id;

--     -- extended_bounds
--     UPDATE dashboard_public.user_settings 
--         SET extended_bounds = NULL
--     WHERE user_id = v_user_id;

--     SELECT ST_ForceCollection (ST_Collect ( l.poly ))
--         FROM dashboard_public.users a
--         INNER JOIN dashboard_public.user_locations al ON (a.id = al.user_id)
--         INNER JOIN dashboard_public.locations l ON (l.id = al.location_id)
--         INNER JOIN dashboard_public.user_location_types lt ON (al.type_id = lt.id)
--         WHERE a.id = v_user_id
--         AND lt.ref != 'TEMPORARY'
--     INTO v_collection;

--     UPDATE dashboard_public.user_settings 
--         SET extended_bounds = v_collection
--     WHERE user_id = v_user_id;

--     -- temporary_bounds
--     UPDATE dashboard_public.user_settings 
--         SET temporary_bounds = NULL
--     WHERE user_id = v_user_id;

--     SELECT ST_ForceCollection (ST_Collect ( l.poly ))
--         FROM dashboard_public.users a
--         INNER JOIN dashboard_public.user_locations al ON (a.id = al.user_id)
--         INNER JOIN dashboard_public.locations l ON (l.id = al.location_id)
--         INNER JOIN dashboard_public.user_location_types lt ON (al.type_id = lt.id)
--         WHERE a.id = v_user_id
--         AND lt.ref in ('TEMPORARY')
--     INTO v_collection;

--     UPDATE dashboard_public.user_settings 
--         SET temporary_bounds = v_collection
--     WHERE user_id = v_user_id;

-- END;
-- $LQLCODEZ$
-- LANGUAGE plpgsql
-- VOLATILE SECURITY DEFINER; -- THIS MAY NEED SECURITY DEFINER SINCE SOME LOCATIONS MAY BE EDITED BY NON OWNERS

CREATE OR REPLACE FUNCTION dashboard_private.update_user_bounds (v_user_id uuid)
    RETURNS void
    AS $LQLCODEZ$

DECLARE
   v_collection geometry;
BEGIN

    -- bounds
    UPDATE dashboard_public.user_settings 
        SET bounds = NULL
    WHERE user_id = v_user_id;

    SELECT ST_ForceCollection (ST_Collect ( al.poly ))
        FROM dashboard_public.users a
        INNER JOIN dashboard_public.user_locations al ON (a.id = al.user_id)
        -- INNER JOIN dashboard_public.locations l ON (l.id = al.location_id)
        INNER JOIN dashboard_public.user_location_types lt ON (al.type_id = lt.id)
        WHERE a.id = v_user_id
        AND lt.ref = 'HOME'
    INTO v_collection;

    UPDATE dashboard_public.user_settings 
        SET bounds = v_collection
    WHERE user_id = v_user_id;

    -- close_bounds
    UPDATE dashboard_public.user_settings 
        SET close_bounds = NULL
    WHERE user_id = v_user_id;

    SELECT ST_ForceCollection (ST_Collect ( al.poly ))
        FROM dashboard_public.users a
        INNER JOIN dashboard_public.user_locations al ON (a.id = al.user_id)
        -- INNER JOIN dashboard_public.locations l ON (l.id = al.location_id)
        INNER JOIN dashboard_public.user_location_types lt ON (al.type_id = lt.id)
        WHERE a.id = v_user_id
        AND lt.ref in ('HOME', 'WORK', 'EXERCISE', 'NEIGHBORHOOD', 'FRIENDS', 'FAMILY') AND lt.ref != 'TEMPORARY'
    INTO v_collection;

    UPDATE dashboard_public.user_settings 
        SET close_bounds = v_collection
    WHERE user_id = v_user_id;

    -- extended_bounds
    UPDATE dashboard_public.user_settings 
        SET extended_bounds = NULL
    WHERE user_id = v_user_id;

    SELECT ST_ForceCollection (ST_Collect ( al.poly ))
        FROM dashboard_public.users a
        INNER JOIN dashboard_public.user_locations al ON (a.id = al.user_id)
        -- INNER JOIN dashboard_public.locations l ON (l.id = al.location_id)
        INNER JOIN dashboard_public.user_location_types lt ON (al.type_id = lt.id)
        WHERE a.id = v_user_id
        AND lt.ref != 'TEMPORARY'
    INTO v_collection;

    UPDATE dashboard_public.user_settings 
        SET extended_bounds = v_collection
    WHERE user_id = v_user_id;

    -- temporary_bounds
    UPDATE dashboard_public.user_settings 
        SET temporary_bounds = NULL
    WHERE user_id = v_user_id;

    SELECT ST_ForceCollection (ST_Collect ( al.poly ))
        FROM dashboard_public.users a
        INNER JOIN dashboard_public.user_locations al ON (a.id = al.user_id)
        -- INNER JOIN dashboard_public.locations l ON (l.id = al.location_id)
        INNER JOIN dashboard_public.user_location_types lt ON (al.type_id = lt.id)
        WHERE a.id = v_user_id
        AND lt.ref in ('TEMPORARY')
    INTO v_collection;

    UPDATE dashboard_public.user_settings 
        SET temporary_bounds = v_collection
    WHERE user_id = v_user_id;

END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE SECURITY DEFINER; -- THIS MAY NEED SECURITY DEFINER SINCE SOME LOCATIONS MAY BE EDITED BY NON OWNERS

CREATE FUNCTION dashboard_private.update_user_bounds_trigger ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (TG_OP = 'DELETE') THEN 
        EXECUTE dashboard_private.update_user_bounds(OLD.user_id);
        RETURN OLD;
    END IF;

    EXECUTE dashboard_private.update_user_bounds(NEW.user_id);
    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE FUNCTION dashboard_private.update_location_update_user_bounds ()
    RETURNS TRIGGER
    AS $LQLCODEZ$

BEGIN

    UPDATE dashboard_public.user_locations
        SET coords = NEW.coords,
        poly = NEW.poly
    WHERE location_id = NEW.id;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE FUNCTION dashboard_private.rm_user_location_update_user_bounds ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    EXECUTE dashboard_private.update_user_bounds(OLD.user_id);
    RETURN OLD;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

ALTER TABLE "dashboard_public".user_locations ALTER COLUMN location_id DROP NOT NULL;
ALTER TABLE "dashboard_public".user_locations ALTER COLUMN coords DROP NOT NULL;
ALTER TABLE "dashboard_public".user_locations ALTER COLUMN poly DROP NOT NULL;

CREATE TRIGGER _0000_sync_gloc_centroids
    BEFORE INSERT OR UPDATE ON "dashboard_public".user_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_loc_centroids ();

CREATE TRIGGER _0000_ins_user_locations_update_polys
    BEFORE INSERT ON "dashboard_public".user_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.location_update_polys ();

CREATE TRIGGER _0000_upd_user_locations_update_groups
    BEFORE UPDATE ON "dashboard_public".user_locations
    FOR EACH ROW
    WHEN (OLD.location_id <> NEW.location_id OR OLD.type_id <> NEW.type_id)
    EXECUTE PROCEDURE dashboard_private.location_update_polys ();

--- ins, upd, del user_locations

CREATE TRIGGER _0001_ins_user_locations_update_groups
    AFTER INSERT ON "dashboard_public".user_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_user_bounds_trigger ();

CREATE TRIGGER _0001_upd_user_locations_update_groups
    AFTER UPDATE ON "dashboard_public".user_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_user_bounds_trigger ();

CREATE TRIGGER _0001_del_user_locations_update_groups
    AFTER DELETE ON "dashboard_public".user_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_user_bounds_trigger ();

-- locations

CREATE TRIGGER _0001_update_locations_update_users
    AFTER UPDATE ON "dashboard_public".locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_location_update_user_bounds ();

-- clean 


CREATE TRIGGER zzzzz_clean_polys_upd
    BEFORE UPDATE ON "dashboard_public".user_locations
    FOR EACH ROW
    WHEN (NOT ST_Equals(NEW.poly, OLD.poly))
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

CREATE TRIGGER zzzzz_clean_polys_ins
    BEFORE INSERT ON "dashboard_public".user_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

CREATE TRIGGER zzzzz_clean_bounds_upd
    BEFORE UPDATE ON "dashboard_public".user_settings
    FOR EACH ROW
    WHEN (NOT ST_Equals(NEW.bounds, OLD.bounds))
    EXECUTE PROCEDURE dashboard_private.clean_geogis_bounds ();

CREATE TRIGGER zzzzz_clean_bounds_ins
    BEFORE INSERT ON "dashboard_public".user_settings
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_bounds ();

-- 

CREATE OR REPLACE FUNCTION dashboard_private.clean_geogis_user_bounds ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (NEW.close_bounds IS NOT NULL) THEN 
        IF (NOT ST_Equals(NEW.close_bounds, OLD.close_bounds)) THEN 
            NEW.close_bounds = ST_MakeValid(NEW.close_bounds);
        END IF;
    END IF;
    IF (NEW.extended_bounds IS NOT NULL) THEN 
        IF (NOT ST_Equals(NEW.extended_bounds, OLD.extended_bounds)) THEN 
            NEW.extended_bounds = ST_MakeValid(NEW.extended_bounds);
        END IF;
    END IF;
    IF (NEW.temporary_bounds IS NOT NULL) THEN 
        IF (NOT ST_Equals(NEW.temporary_bounds, OLD.temporary_bounds)) THEN 
            NEW.temporary_bounds = ST_MakeValid(NEW.temporary_bounds);
        END IF;
    END IF;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;


CREATE TRIGGER zzzzz_clean_bounds_any
    BEFORE INSERT OR UPDATE ON "dashboard_public".user_settings
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_user_bounds ();


COMMIT;

