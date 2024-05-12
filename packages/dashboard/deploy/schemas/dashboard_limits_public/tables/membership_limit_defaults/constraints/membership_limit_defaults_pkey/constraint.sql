-- Deploy: schemas/dashboard_limits_public/tables/membership_limit_defaults/constraints/membership_limit_defaults_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/membership_limit_defaults/table

BEGIN;

ALTER TABLE "dashboard_limits_public".membership_limit_defaults
    ADD CONSTRAINT membership_limit_defaults_pkey PRIMARY KEY (id);
COMMIT;
