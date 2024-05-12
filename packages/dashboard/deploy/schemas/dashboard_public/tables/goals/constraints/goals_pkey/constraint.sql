-- Deploy: schemas/dashboard_public/tables/goals/constraints/goals_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table

BEGIN;

ALTER TABLE "dashboard_public".goals
    ADD CONSTRAINT goals_pkey PRIMARY KEY (id);
COMMIT;
