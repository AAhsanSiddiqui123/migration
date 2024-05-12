-- Revert schemas/dashboard_private/procedures/update_track_bounds from pg

BEGIN;

-- DROP FUNCTION dashboard_private.update_track_bounds;
CREATE  OR REPLACE FUNCTION dashboard_private.update_track_bounds (v_track_id uuid)
    RETURNS void
    AS $LQLCODEZ$

DECLARE
   v_location_collection geometry;
   v_custom_collection geometry;
BEGIN
    UPDATE dashboard_public.tracks 
        SET bounds = NULL
    WHERE id = v_track_id;

    SELECT ST_ForceCollection (ST_Collect ( al.poly ))
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

COMMIT;
