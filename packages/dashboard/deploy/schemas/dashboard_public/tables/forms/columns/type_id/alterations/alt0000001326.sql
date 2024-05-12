-- Deploy: schemas/dashboard_public/tables/forms/columns/type_id/alterations/alt0000001326 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table
-- requires: schemas/dashboard_public/tables/forms/columns/type_id/column

BEGIN;

ALTER TABLE "dashboard_public".forms 
    ALTER COLUMN type_id SET NOT NULL;
COMMIT;
