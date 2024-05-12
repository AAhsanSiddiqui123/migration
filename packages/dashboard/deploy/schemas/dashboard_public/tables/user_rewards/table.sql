-- Deploy schemas/dashboard_public/tables/user_rewards/table to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

CREATE TABLE dashboard_public.user_rewards (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 ()
  -- fields
);

COMMENT ON TABLE dashboard_public.user_rewards IS 'user rewards';

COMMENT ON COLUMN dashboard_public.user_rewards.id IS 'The primary unique identifier for the user_rewards table.';

COMMIT;
