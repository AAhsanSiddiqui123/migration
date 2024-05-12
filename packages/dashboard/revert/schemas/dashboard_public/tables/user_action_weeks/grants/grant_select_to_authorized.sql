-- Revert dashboard:schemas/dashboard_public/tables/user_action_weeks/grants/grant_select_to_authorized from pg

BEGIN;

REVOKE SELECT ON TABLE dashboard_public.user_action_weeks FROM authorized;

COMMIT;
