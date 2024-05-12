-- Deploy: schemas/dashboard_public/tables/users/columns/type/alterations/alt0000000018 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/type/column

BEGIN;

ALTER TABLE "dashboard_public".users 
    ALTER COLUMN type SET DEFAULT 0;
COMMIT;
