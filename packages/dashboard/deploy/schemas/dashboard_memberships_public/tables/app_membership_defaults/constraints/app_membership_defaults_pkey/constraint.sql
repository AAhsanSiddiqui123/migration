-- Deploy: schemas/dashboard_memberships_public/tables/app_membership_defaults/constraints/app_membership_defaults_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_membership_defaults/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_membership_defaults
    ADD CONSTRAINT app_membership_defaults_pkey PRIMARY KEY (id);
COMMIT;
