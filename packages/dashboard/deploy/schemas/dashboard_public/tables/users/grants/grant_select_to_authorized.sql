-- Deploy dashboard:schemas/dashboard_public/tables/users/grants/grant_select_to_authorized to pg

BEGIN;

GRANT SELECT  ON TABLE dashboard_public.users TO authorized;

COMMIT;
