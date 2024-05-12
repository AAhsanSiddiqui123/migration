-- Revert dashboard:schemas/dashboard_public/tables/user_settings/grants/grant_select_to_authorized from pg

BEGIN;

REVOKE SELECT ON TABLE dashboard_public.user_settings FROM authorized;

COMMIT;
