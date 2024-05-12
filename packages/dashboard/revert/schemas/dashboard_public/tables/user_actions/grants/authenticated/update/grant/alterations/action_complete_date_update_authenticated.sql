-- Revert dashboard:schemas/dashboard_public/tables/user_actions/grants/authenticated/update/grant/alterations/action_complete_date_update_authenticated from pg

BEGIN;

REVOKE UPDATE (action_complete_date) ON TABLE "dashboard_public".user_actions FROM authenticated;

COMMIT;
