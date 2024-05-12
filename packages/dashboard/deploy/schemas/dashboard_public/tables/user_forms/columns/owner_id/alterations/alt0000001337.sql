-- Deploy: schemas/dashboard_public/tables/user_forms/columns/owner_id/alterations/alt0000001337 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table
-- requires: schemas/dashboard_public/tables/user_forms/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_forms 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
