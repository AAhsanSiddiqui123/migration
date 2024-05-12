-- Deploy dashboard:schemas/dashboard_public/tables/user_action_weeks/constraints/unique_constraint_userid_actionid_trackid to pg

BEGIN;

ALTER TABLE IF EXISTS dashboard_public.user_action_weeks
    ADD CONSTRAINT user_action_weeks_userid_actionid_trackid_key UNIQUE (user_id, track_id,action_id);


COMMIT;
