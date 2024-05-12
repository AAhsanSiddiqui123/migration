-- Deploy: schemas/dashboard_permissions_public/tables/membership_permissions/constraints/membership_permissions_bitnum_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/membership_permissions/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".membership_permissions
    ADD CONSTRAINT membership_permissions_bitnum_key UNIQUE (bitnum);
COMMIT;
