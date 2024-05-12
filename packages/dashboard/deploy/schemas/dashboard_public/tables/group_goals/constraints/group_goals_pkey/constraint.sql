-- Deploy: schemas/dashboard_public/tables/group_goals/constraints/group_goals_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table

BEGIN;

ALTER TABLE "dashboard_public".group_goals
    ADD CONSTRAINT group_goals_pkey PRIMARY KEY (id);
COMMIT;
