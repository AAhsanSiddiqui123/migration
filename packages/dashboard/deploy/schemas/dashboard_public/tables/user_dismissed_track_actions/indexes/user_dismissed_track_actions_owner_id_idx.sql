-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/indexes/user_dismissed_track_actions_owner_id_idx to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table

BEGIN;

CREATE INDEX user_dismissed_track_actions_owner_id_idx ON dashboard_public.user_dismissed_track_actions (
 owner_id
);

COMMIT;
