-- Deploy: schemas/dashboard_public/tables/goal_explanations/constraints/goal_explanations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table

BEGIN;

ALTER TABLE "dashboard_public".goal_explanations
    ADD CONSTRAINT goal_explanations_pkey PRIMARY KEY (id);
COMMIT;
