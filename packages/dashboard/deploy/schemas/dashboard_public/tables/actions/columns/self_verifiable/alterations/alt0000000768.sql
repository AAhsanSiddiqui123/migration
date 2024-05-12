-- Deploy: schemas/dashboard_public/tables/actions/columns/self_verifiable/alterations/alt0000000768 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/self_verifiable/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN self_verifiable SET DEFAULT false;
COMMIT;
