-- Deploy: schemas/dashboard_public/tables/action_item_language_variations/columns/id/alterations/alt0000001406 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_language_variations/table
-- requires: schemas/dashboard_public/tables/action_item_language_variations/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".action_item_language_variations 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
