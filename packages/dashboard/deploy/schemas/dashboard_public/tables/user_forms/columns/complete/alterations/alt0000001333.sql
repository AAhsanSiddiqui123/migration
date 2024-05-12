-- Deploy: schemas/dashboard_public/tables/user_forms/columns/complete/alterations/alt0000001333 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table
-- requires: schemas/dashboard_public/tables/user_forms/columns/complete/column

BEGIN;

ALTER TABLE "dashboard_public".user_forms 
    ALTER COLUMN complete SET DEFAULT false;
COMMIT;
