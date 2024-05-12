-- Deploy: schemas/dashboard_permissions_public/tables/group_member_permissions/columns/bitnum/alterations/alt0000000280 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/group_member_permissions/table
-- requires: schemas/dashboard_permissions_public/tables/group_member_permissions/columns/bitnum/column

BEGIN;
ALTER TABLE "dashboard_permissions_public".group_member_permissions ADD CONSTRAINT group_member_permissions_bitnum_chk CHECK (bitnum >= 1 AND bitnum <= 32);
COMMIT;
