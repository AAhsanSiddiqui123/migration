-- Deploy: schemas/dashboard_public/tables/connected_accounts/columns/is_verified/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/table

BEGIN;

ALTER TABLE "dashboard_public".connected_accounts ADD COLUMN is_verified boolean;
COMMIT;
