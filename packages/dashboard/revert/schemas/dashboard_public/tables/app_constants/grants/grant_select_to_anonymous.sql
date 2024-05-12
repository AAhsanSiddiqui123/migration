-- Revert schemas/dashboard_public/tables/app_constants/grants/grant_select_to_anonymous from pg

BEGIN;

REVOKE SELECT ON TABLE dashboard_public.app_constants FROM anonymous;

COMMIT;
