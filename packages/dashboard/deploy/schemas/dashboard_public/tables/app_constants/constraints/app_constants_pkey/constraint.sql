-- Deploy: schemas/dashboard_public/tables/app_constants/constraints/app_constants_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;

ALTER TABLE "dashboard_public".app_constants
    ADD CONSTRAINT app_constants_pkey PRIMARY KEY (id);
COMMIT;
