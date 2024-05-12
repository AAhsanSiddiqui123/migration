-- Revert dashboard:schemas/dashboard_public/tables/user_action_weeks/constraints/unique_constraint_userid_actionid_trackid from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks
    DROP CONSTRAINT user_action_weeks_userid_actionid_trackid_key;


COMMIT;
