-- Deploy: schemas/dashboard_public/tables/actions/columns/verification_reward_amount/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN verification_reward_amount numeric;
COMMIT;
