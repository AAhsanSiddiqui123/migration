-- Deploy: schemas/dashboard_public/tables/rewards/constraints/rewards_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table

BEGIN;

ALTER TABLE "dashboard_public".rewards
    ADD CONSTRAINT rewards_pkey PRIMARY KEY (id);
COMMIT;
