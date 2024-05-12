-- Deploy schemas/dashboard_public/views/view_track_and_track_action_datatags/view to pg

-- requires: schemas/dashboard_public/schema


BEGIN;

CREATE OR REPLACE VIEW dashboard_public.view_track_and_track_action_datatags
 AS

SELECT DISTINCT unnest(tracks.data_tags) AS data_tags FROM dashboard_public.tracks
UNION
SELECT DISTINCT unnest(track_actions.data_tags) AS data_tags FROM dashboard_public.track_actions
ORDER BY 1;

ALTER TABLE dashboard_public.view_track_and_track_action_datatags
    OWNER TO postgres;

GRANT SELECT ON TABLE dashboard_public.view_track_and_track_action_datatags TO administrator;
GRANT SELECT ON TABLE dashboard_public.view_track_and_track_action_datatags TO authenticated;
GRANT SELECT ON TABLE dashboard_public.view_track_and_track_action_datatags TO postgres;


COMMIT;