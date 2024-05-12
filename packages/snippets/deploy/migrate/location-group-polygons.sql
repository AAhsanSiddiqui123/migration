-- Deploy launchql-snippets:migrate/location-group-polygons to pg

BEGIN;

CREATE FUNCTION dashboard_private.update_group_bounds (v_group_id uuid)
    RETURNS void
    AS $LQLCODEZ$

DECLARE
   v_location_collection geometry;
   v_custom_collection geometry;
BEGIN
    UPDATE dashboard_public.groups 
        SET bounds = NULL
    WHERE id = v_group_id;

    SELECT ST_ForceCollection (ST_Collect ( al.poly ))
        FROM dashboard_public.groups a
        INNER JOIN dashboard_public.group_locations al ON (a.id = al.group_id)
        WHERE a.id = v_group_id
    INTO v_custom_collection;

    UPDATE dashboard_public.groups 
        SET bounds = v_custom_collection
    WHERE id = v_group_id;

END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE FUNCTION dashboard_private.update_group_bounds_trigger ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (TG_OP = 'DELETE') THEN 
        EXECUTE dashboard_private.update_group_bounds(OLD.group_id);
        RETURN OLD;
    END IF;

    EXECUTE dashboard_private.update_group_bounds(NEW.group_id);
    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE FUNCTION dashboard_private.update_location_update_group_bounds ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN

    UPDATE dashboard_public.group_locations
        SET coords = NEW.coords,
        poly = NEW.poly
    WHERE location_id = NEW.id;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

ALTER TABLE "dashboard_public".group_locations ALTER COLUMN location_id DROP NOT NULL;
ALTER TABLE "dashboard_public".group_locations ALTER COLUMN coords DROP NOT NULL;
ALTER TABLE "dashboard_public".group_locations ALTER COLUMN poly DROP NOT NULL;

CREATE TRIGGER _0000_sync_gloc_centroids
    BEFORE INSERT OR UPDATE ON "dashboard_public".group_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_loc_centroids ();

CREATE TRIGGER _0000_ins_group_locations_update_polys
    BEFORE INSERT ON "dashboard_public".group_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.location_update_polys ();

CREATE TRIGGER _0000_upd_group_locations_update_groups
    BEFORE UPDATE ON "dashboard_public".group_locations
    FOR EACH ROW
    WHEN (OLD.location_id <> NEW.location_id)
    EXECUTE PROCEDURE dashboard_private.location_update_polys ();

--- ins, upd, del group_locations

CREATE TRIGGER _0001_ins_group_locations_update_groups
    AFTER INSERT ON "dashboard_public".group_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_group_bounds_trigger ();

CREATE TRIGGER _0001_upd_group_locations_update_groups
    AFTER UPDATE ON "dashboard_public".group_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_group_bounds_trigger ();

CREATE TRIGGER _0001_del_group_locations_update_groups
    AFTER DELETE ON "dashboard_public".group_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_group_bounds_trigger ();

-- locations

CREATE TRIGGER _0001_update_locations_update_groups
    AFTER UPDATE ON "dashboard_public".locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_location_update_group_bounds ();

-- clean

CREATE TRIGGER zzzzz_clean_polys_upd
    BEFORE UPDATE ON "dashboard_public".group_locations
    FOR EACH ROW
    WHEN (NOT ST_Equals(NEW.poly, OLD.poly))
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

CREATE TRIGGER zzzzz_clean_polys_ins
    BEFORE INSERT ON "dashboard_public".group_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

CREATE TRIGGER zzzzz_clean_bounds_upd
    BEFORE UPDATE ON "dashboard_public".groups
    FOR EACH ROW
    WHEN (NOT ST_Equals(NEW.bounds, OLD.bounds))
    EXECUTE PROCEDURE dashboard_private.clean_geogis_bounds ();

CREATE TRIGGER zzzzz_clean_bounds_ins
    BEFORE INSERT ON "dashboard_public".groups
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_bounds ();


COMMIT;

