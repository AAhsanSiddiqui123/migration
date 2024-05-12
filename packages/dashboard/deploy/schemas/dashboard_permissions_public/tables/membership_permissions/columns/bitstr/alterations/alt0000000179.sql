-- Deploy: schemas/dashboard_permissions_public/tables/membership_permissions/columns/bitstr/alterations/alt0000000179 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/membership_permissions/table
-- requires: schemas/dashboard_permissions_public/tables/membership_permissions/columns/bitstr/column

BEGIN;

ALTER TABLE "dashboard_permissions_public".membership_permissions 
    ALTER COLUMN bitstr SET DEFAULT lpad('', 32, '0')::bit(32);
COMMIT;
