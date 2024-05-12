-- Deploy schemas/dashboard_public/tables/user_rewards/policies/enable_row_level_security to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_rewards/table

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    ENABLE ROW LEVEL SECURITY;

COMMIT;
