-- Revert schemas/dashboard_public/tables/user_rewards/grants/grant_select_insert_update_delete_to_authenticated from pg

BEGIN;

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.user_rewards FROM authenticated;

COMMIT;
