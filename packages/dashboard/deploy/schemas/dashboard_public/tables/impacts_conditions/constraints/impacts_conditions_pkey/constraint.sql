-- Deploy: schemas/dashboard_public/tables/impacts_conditions/constraints/impacts_conditions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions
    ADD CONSTRAINT impacts_conditions_pkey PRIMARY KEY (id);
COMMIT;
