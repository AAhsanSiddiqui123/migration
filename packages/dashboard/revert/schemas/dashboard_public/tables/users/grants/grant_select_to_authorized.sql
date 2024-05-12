-- Revert dashboard:schemas/dashboard_public/tables/users/grants/grant_select_to_authorized from pg

BEGIN;

REVOKE SELECT ON TABLE dashboard_public.users FROM authorized;

COMMIT;
