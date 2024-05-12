-- Deploy: schemas/dashboard_public/tables/actions/columns/is_approved/alterations/alt0000000761 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/is_approved/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN is_approved SET NOT NULL;
COMMIT;
