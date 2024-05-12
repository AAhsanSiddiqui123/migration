-- Deploy schemas/dashboard_public/tables/user_action_weeks/table to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

CREATE TABLE dashboard_public.user_action_weeks (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 ()
);

COMMENT ON TABLE dashboard_public.user_action_weeks IS 'user action weeks table';

COMMENT ON COLUMN dashboard_public.user_action_weeks.id IS 'The primary unique identifier for the user_action_weeks table.';

COMMIT;
