-- Deploy: schemas/dashboard_public/tables/forms/columns/owner_id/alterations/alt0000001324 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table
-- requires: schemas/dashboard_public/tables/forms/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".forms 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
