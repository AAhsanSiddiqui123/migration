-- Deploy: schemas/dashboard_public/tables/action_language_variations/columns/owner_id/alterations/alt0000001280 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/table
-- requires: schemas/dashboard_public/tables/action_language_variations/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_language_variations 
    ALTER COLUMN owner_id SET DEFAULT uuid_nil();
COMMIT;
