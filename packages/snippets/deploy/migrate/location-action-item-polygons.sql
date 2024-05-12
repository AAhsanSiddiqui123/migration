-- Deploy launchql-snippets:migrate/location-action-item-polygons to pg

BEGIN;

CREATE FUNCTION dashboard_private.update_action_item_bounds (v_action_item_id uuid)
    RETURNS void
    AS $LQLCODEZ$

DECLARE
   v_collection geometry;
BEGIN
    UPDATE dashboard_public.action_items 
        SET bounds = NULL
    WHERE id = v_action_item_id;

    -- SELECT ST_ForceCollection (ST_Collect ( l.poly ))
    --     FROM dashboard_public.action_items a
    --     INNER JOIN dashboard_public.action_item_locations al ON (a.id = al.action_item_id)
    --     INNER JOIN dashboard_public.locations l ON (l.id = al.location_id)
    --     WHERE a.id = v_action_item_id
    -- INTO v_collection;

    SELECT ST_ForceCollection (ST_Collect ( al.poly ))
        FROM dashboard_public.action_items a
        INNER JOIN dashboard_public.action_item_locations al ON (a.id = al.action_item_id)
        WHERE a.id = v_action_item_id
    INTO v_collection;

    UPDATE dashboard_public.action_items 
        SET bounds = v_collection
    WHERE id = v_action_item_id;

END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE FUNCTION dashboard_private.update_action_item_bounds_trigger ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (TG_OP = 'DELETE') THEN 
        EXECUTE dashboard_private.update_action_item_bounds(OLD.action_item_id);
        RETURN OLD;
    END IF;

    EXECUTE dashboard_private.update_action_item_bounds(NEW.action_item_id);
    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE FUNCTION dashboard_private.update_location_update_action_item_bounds ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN

    UPDATE dashboard_public.action_item_locations
        SET coords = NEW.coords,
        poly = NEW.poly
    WHERE location_id = NEW.id;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

ALTER TABLE "dashboard_public".action_item_locations ALTER COLUMN location_id DROP NOT NULL;
ALTER TABLE "dashboard_public".action_item_locations ALTER COLUMN coords DROP NOT NULL;
ALTER TABLE "dashboard_public".action_item_locations ALTER COLUMN poly DROP NOT NULL;

CREATE TRIGGER _0000_sync_gloc_centroids
    BEFORE INSERT OR UPDATE ON "dashboard_public".action_item_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_loc_centroids ();

CREATE TRIGGER _0000_ins_action_item_locations_update_polys
    BEFORE INSERT ON "dashboard_public".action_item_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.location_update_polys ();

CREATE TRIGGER _0000_upd_action_item_locations_update_groups
    BEFORE UPDATE ON "dashboard_public".action_item_locations
    FOR EACH ROW
    WHEN (OLD.location_id <> NEW.location_id)
    EXECUTE PROCEDURE dashboard_private.location_update_polys ();

--- ins, upd, del group_locations

CREATE TRIGGER _0001_ins_action_item_locations_update_groups
    AFTER INSERT ON "dashboard_public".action_item_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_action_item_bounds_trigger ();

CREATE TRIGGER _0001_upd_action_item_locations_update_groups
    AFTER UPDATE ON "dashboard_public".action_item_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_action_item_bounds_trigger ();

CREATE TRIGGER _0001_del_action_item_locations_update_groups
    AFTER DELETE ON "dashboard_public".action_item_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_action_item_bounds_trigger ();

-- locations

CREATE TRIGGER _0001_update_locations_update_action_items
    AFTER UPDATE ON "dashboard_public".locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_location_update_action_item_bounds ();

-- clean

CREATE TRIGGER zzzzz_clean_polys_upd
    BEFORE UPDATE ON "dashboard_public".action_item_locations
    FOR EACH ROW
    WHEN (NOT ST_Equals(NEW.poly, OLD.poly))
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

CREATE TRIGGER zzzzz_clean_polys_ins
    BEFORE INSERT ON "dashboard_public".action_item_locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

CREATE TRIGGER zzzzz_clean_bounds_upd
    BEFORE UPDATE ON "dashboard_public".action_items
    FOR EACH ROW
    WHEN (NOT ST_Equals(NEW.bounds, OLD.bounds))
    EXECUTE PROCEDURE dashboard_private.clean_geogis_bounds ();

CREATE TRIGGER zzzzz_clean_bounds_ins
    BEFORE INSERT ON "dashboard_public".action_items
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_bounds ();

CREATE TRIGGER zzzzz_clean_polys_upd
    BEFORE UPDATE ON "dashboard_public".action_items
    FOR EACH ROW
    WHEN (NOT ST_Equals(NEW.poly, OLD.poly))
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

CREATE TRIGGER zzzzz_clean_polys_ins
    BEFORE INSERT ON "dashboard_public".action_items
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

COMMIT;

