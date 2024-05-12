-- Deploy: schemas/dashboard_limits_public/tables/group_member_limit_defaults/constraints/group_member_limit_defaults_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/group_member_limit_defaults/table

BEGIN;

ALTER TABLE "dashboard_limits_public".group_member_limit_defaults
    ADD CONSTRAINT group_member_limit_defaults_pkey PRIMARY KEY (id);
COMMIT;
