-- Deploy: schemas/dashboard_public/tables/reward_payments/indexes/reward_payments_action_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table
-- requires: schemas/dashboard_public/tables/reward_payments/columns/action_id/column

BEGIN;
CREATE INDEX reward_payments_action_id_idx ON "dashboard_public".reward_payments (action_id);
COMMIT;
