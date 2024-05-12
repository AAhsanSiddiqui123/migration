-- Deploy: schemas/dashboard_public/tables/track_actions/columns/is_required/alterations/alt0000000940 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table
-- requires: schemas/dashboard_public/tables/track_actions/columns/is_required/column

BEGIN;

ALTER TABLE "dashboard_public".track_actions 
    ALTER COLUMN is_required SET NOT NULL;
COMMIT;
