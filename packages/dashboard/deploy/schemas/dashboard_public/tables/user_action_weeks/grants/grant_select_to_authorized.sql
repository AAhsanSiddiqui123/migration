-- Deploy dashboard:schemas/dashboard_public/tables/user_action_weeks/grants/grant_select_to_authorized to pg

BEGIN;

GRANT SELECT  ON TABLE dashboard_public.user_action_weeks TO authorized;

COMMIT;
