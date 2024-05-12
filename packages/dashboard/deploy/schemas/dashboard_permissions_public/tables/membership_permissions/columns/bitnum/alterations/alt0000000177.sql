-- Deploy: schemas/dashboard_permissions_public/tables/membership_permissions/columns/bitnum/alterations/alt0000000177 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/membership_permissions/table
-- requires: schemas/dashboard_permissions_public/tables/membership_permissions/columns/bitnum/column

BEGIN;
ALTER TABLE "dashboard_permissions_public".membership_permissions ADD CONSTRAINT membership_permissions_bitnum_chk CHECK (bitnum >= 1 AND bitnum <= 32);
COMMIT;
