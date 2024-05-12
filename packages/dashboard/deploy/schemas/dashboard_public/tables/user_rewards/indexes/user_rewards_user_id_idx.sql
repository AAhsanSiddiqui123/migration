-- Deploy schemas/dashboard_public/tables/user_rewards/indexes/user_rewards_user_id_idx to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_rewards/table

BEGIN;

CREATE INDEX user_rewards_user_id_idx ON dashboard_public.user_rewards (
 user_id
);

COMMIT;
