-- Deploy schemas/dashboard_public/tables/user_action_weeks/indexes/user_action_weeks_track_id_idx to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table

BEGIN;

CREATE INDEX user_action_weeks_track_id_idx ON dashboard_public.user_action_weeks (
 track_id
);

COMMIT;
