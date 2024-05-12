-- Deploy launchql-snippets:migrate/location-updates to pg

BEGIN;


-- delete from dashboard_public.users where id not in ('dc2074d5-cd60-4fca-fafd-814c5f18732a', 'dc206176-eb9a-4180-d88c-93f0c287d8da') AND type = 0;
-- delete from dashboard_public.actions where slug not in ('should-los-angeles-transform-itself-into-a-sponge-city', 'watch-a-video-on-indias-water-revolution');

CREATE OR REPLACE FUNCTION dashboard_private.update_loc_centroids ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (NEW.poly IS NULL AND NEW.coords IS NOT NULL) THEN 
        -- https://gis.stackexchange.com/questions/247326/create-a-rectangle-around-a-point-in-postgis
        NEW.poly = ST_Envelope(ST_Buffer(NEW.coords,0.0125));
    END IF;
    IF (NEW.coords IS NULL) THEN 
        NEW.coords = ST_Centroid( NEW.poly );
    END IF;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE OR REPLACE FUNCTION dashboard_private.clean_geogis_poly ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (NEW.poly IS NOT NULL) THEN 
        NEW.poly = ST_MakeValid(NEW.poly);
    END IF;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE OR REPLACE FUNCTION dashboard_private.clean_geogis_bounds ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (NEW.bounds IS NOT NULL) THEN 
        NEW.bounds = ST_MakeValid(NEW.bounds);
    END IF;

    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

CREATE TRIGGER _0000_sync_centroids
    BEFORE INSERT OR UPDATE ON "dashboard_public".locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.update_loc_centroids ();

-- DROP TRIGGER zzzzz_clean_polys
--      ON "dashboard_public".locations;

CREATE TRIGGER zzzzz_clean_polys_upd
    BEFORE UPDATE ON "dashboard_public".locations
    FOR EACH ROW
    WHEN (NOT ST_Equals(NEW.poly, OLD.poly))
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

CREATE TRIGGER zzzzz_clean_polys_ins
    BEFORE INSERT ON "dashboard_public".locations
    FOR EACH ROW
    EXECUTE PROCEDURE dashboard_private.clean_geogis_poly ();

--

CREATE FUNCTION dashboard_private.location_update_polys ()
    RETURNS TRIGGER
    AS $LQLCODEZ$
BEGIN
    IF (NEW.location_id IS NOT NULL) THEN 
        SELECT coords, poly FROM dashboard_public.locations WHERE id = NEW.location_id
        INTO NEW.coords, NEW.poly;
    END IF;
    
    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

COMMIT;
