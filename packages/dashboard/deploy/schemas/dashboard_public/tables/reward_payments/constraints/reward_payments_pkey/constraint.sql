-- Deploy: schemas/dashboard_public/tables/reward_payments/constraints/reward_payments_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table

BEGIN;

ALTER TABLE "dashboard_public".reward_payments
    ADD CONSTRAINT reward_payments_pkey PRIMARY KEY (id);
COMMIT;
