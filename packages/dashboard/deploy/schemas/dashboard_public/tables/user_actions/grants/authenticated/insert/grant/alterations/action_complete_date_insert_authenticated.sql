-- Deploy dashboard:schemas/dashboard_public/tables/user_actions/grants/authenticated/insert/grant/alterations/action_complete_date_insert_authenticated to pg

BEGIN;

GRANT INSERT (action_complete_date) ON TABLE "dashboard_public".user_actions TO authenticated;

COMMIT;
