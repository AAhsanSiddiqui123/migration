-- Revert schemas/dashboard_public/tables/reward_activity_types/grants/grant_select_insert_update_delete_to_authenticated from pg

BEGIN;

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.reward_activity_types FROM authenticated;

COMMIT;
