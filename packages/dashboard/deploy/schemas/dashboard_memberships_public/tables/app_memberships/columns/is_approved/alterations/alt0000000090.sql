-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_approved/alterations/alt0000000090 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_approved/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN is_approved SET DEFAULT false;
COMMIT;
