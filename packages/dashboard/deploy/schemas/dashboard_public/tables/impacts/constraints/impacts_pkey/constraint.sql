-- Deploy: schemas/dashboard_public/tables/impacts/constraints/impacts_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE "dashboard_public".impacts
    ADD CONSTRAINT impacts_pkey PRIMARY KEY (id);
COMMIT;
