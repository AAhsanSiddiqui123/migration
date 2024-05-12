-- Verify dashboard:schemas/dashboard_public/tables/user_actions/grants/authenticated/insert/grant/alterations/action_complete_date_insert_authenticated on pg

BEGIN;

SELECT verify_table_grant('dashboard_public.user_actions', 'insert', 'authenticated');

ROLLBACK;
