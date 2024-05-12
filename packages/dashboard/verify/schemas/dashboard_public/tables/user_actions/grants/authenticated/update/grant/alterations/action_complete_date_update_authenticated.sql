-- Verify dashboard:schemas/dashboard_public/tables/user_actions/grants/authenticated/update/grant/alterations/action_complete_date_update_authenticated on pg

BEGIN;

SELECT verify_table_grant('dashboard_public.user_actions', 'update', 'authenticated');

ROLLBACK;
