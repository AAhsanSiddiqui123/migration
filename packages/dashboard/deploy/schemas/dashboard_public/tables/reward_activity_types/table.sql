-- Deploy schemas/dashboard_public/tables/reward_activity_types/table to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

CREATE TABLE dashboard_public.reward_activity_types (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 ()
  -- fields
);

COMMENT ON TABLE dashboard_public.reward_activity_types IS 'Reward Activity Types';

COMMENT ON COLUMN dashboard_public.reward_activity_types.id IS 'The primary unique identifier for the reward_activity_types table.';

COMMIT;
