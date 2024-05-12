-- Deploy schemas/dashboard_public/tables/reward_activity_types/policies/enable_row_level_security to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_activity_types/table

BEGIN;

ALTER TABLE dashboard_public.reward_activity_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;
