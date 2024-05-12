-- Deploy schemas/dashboard_public/tables/user_action_weeks/policies/enable_row_level_security to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks
    ENABLE ROW LEVEL SECURITY;

COMMIT;
