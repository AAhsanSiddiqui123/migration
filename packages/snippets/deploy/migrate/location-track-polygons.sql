-- Deploy launchql-snippets:migrate/location-track-polygons to pg

BEGIN;

CREATE FUNCTION dashboard_private.update_track_bounds (v_track_id uuid)
    RETURNS void
    AS $LQLCODEZ$

DECLARE
   v_location_collection geometry;
   v_custom_collection geometry;
BEGIN
    UPDATE dashboard_public.tracks 
        SET bounds = NULL
    WHERE id = v_track_id;

    SELECT ST_ForceCollection (ST_UNION ( al.poly ))
        FROM dashboard_public.tracks a
        INNER JOIN dashboard_public.track_locations al ON (a.id = al.track_id)
        WHERE a.id = v_track_id
    INTO v_custom_collection;

    UPDATE dashboard_public.tracks 
        SET bounds = v_custom_collection
    WHERE id = v_track_id;

END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE FUNCTION dashboard_private.update_track_bounds_trigger ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (TG_OP = 'DELETE') THEN 
        EXECUTE dashboard_private.update_track_bounds(OLD.track_id);
        RETURN OLD;
    END IF;

    EXECUTE dashboard_private.update_track_bounds(NEW.track_id);
    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE FUNCTION dashboard_private.update_location_update_track_bounds ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN

    UPDATE dashboard_public.track_locations
        SET coords = NEW.coords,
        poly = NEW.poly
    WHERE location_id = NEW.id;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

ALTER TABLE "dashboard_public".track_locations ALTER COLUMN location_id DROP NOT NULL;
ALTER TABLE "dashboard_public".track_locations ALTER COLUMN coords DROP NOT NULL;
ALTER TABLE "dashboard_public".track_locations ALTER COLUMN poly DROP NOT NULL;

CREATE TRIGGER _0000_sync_gloc_centroids
    BEFORE INSERT OR UPDATE ON "dashboard_public".track_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_loc_centroids ();

CREATE TRIGGER _0000_ins_track_locations_update_polys
    BEFORE INSERT ON "dashboard_public".track_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.location_update_polys ();

CREATE TRIGGER _0000_upd_track_locations_update_tracks
    BEFORE UPDATE ON "dashboard_public".track_locations
    FOR EACH ROW
    WHEN (OLD.location_id <> NEW.location_id)
    EXECUTE PROCEDURE dashboard_private.location_update_polys ();

--- ins, upd, del track_locations

CREATE TRIGGER _0001_ins_track_locations_update_tracks
    AFTER INSERT ON "dashboard_public".track_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_track_bounds_trigger ();

CREATE TRIGGER _0001_upd_track_locations_update_tracks
    AFTER UPDATE ON "dashboard_public".track_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_track_bounds_trigger ();

CREATE TRIGGER _0001_del_track_locations_update_tracks
    AFTER DELETE ON "dashboard_public".track_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_track_bounds_trigger ();

-- locations

CREATE TRIGGER _0001_update_locations_update_tracks
    AFTER UPDATE ON "dashboard_public".locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_location_update_track_bounds ();


-- clean

CREATE TRIGGER zzzzz_clean_polys_upd
    BEFORE UPDATE ON "dashboard_public".track_locations
    FOR EACH ROW
    WHEN (NOT ST_Equals(NEW.poly, OLD.poly))
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

CREATE TRIGGER zzzzz_clean_polys_ins
    BEFORE INSERT ON "dashboard_public".track_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

CREATE TRIGGER zzzzz_clean_bounds_upd
    BEFORE UPDATE ON "dashboard_public".tracks
    FOR EACH ROW
    WHEN (NOT ST_Equals(NEW.bounds, OLD.bounds))
    EXECUTE PROCEDURE dashboard_private.clean_geogis_bounds ();

CREATE TRIGGER zzzzz_clean_bounds_ins
    BEFORE INSERT ON "dashboard_public".tracks
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_bounds ();



COMMIT;

