-- Deploy schemas/dashboard_public/tables/reward_activity_types/grants/grant_select_insert_update_delete_to_authenticated to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_activity_types/table

BEGIN;

-- TODO make sure to require any policies on this table!

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.reward_activity_types TO authenticated;

COMMIT;
