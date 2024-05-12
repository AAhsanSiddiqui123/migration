-- Revert dashboard:schemas/dashboard_public/tables/user_actions/grants/authenticated/insert/grant/alterations/action_complete_date_insert_authenticated from pg

BEGIN;

REVOKE INSERT (action_complete_date) ON TABLE "dashboard_public".user_actions FROM authenticated;

COMMIT;
