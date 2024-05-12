-- Deploy: schemas/dashboard_limits_public/tables/membership_limits/constraints/membership_limits_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/membership_limits/table

BEGIN;

ALTER TABLE "dashboard_limits_public".membership_limits
    ADD CONSTRAINT membership_limits_pkey PRIMARY KEY (id);
COMMIT;
