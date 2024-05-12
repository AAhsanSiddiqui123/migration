-- Deploy: schemas/dashboard_public/tables/objects/columns/owner_id/alterations/alt0000000656 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/objects/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".objects 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
