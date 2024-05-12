-- Deploy: schemas/dashboard_public/tables/emails/columns/is_verified/alterations/alt0000000436 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table
-- requires: schemas/dashboard_public/tables/emails/columns/is_verified/column

BEGIN;

ALTER TABLE "dashboard_public".emails 
    ALTER COLUMN is_verified SET NOT NULL;
COMMIT;
