-- Deploy dashboard:schemas/dashboard_public/tables/user_settings/grants/grant_select_to_authorized to pg

BEGIN;

GRANT SELECT  ON TABLE dashboard_public.user_settings TO authorized;


COMMIT;
