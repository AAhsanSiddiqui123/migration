-- Deploy: schemas/dashboard_public/tables/user_forms/columns/form_id/alterations/alt0000001335 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table
-- requires: schemas/dashboard_public/tables/user_forms/columns/form_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_forms 
    ALTER COLUMN form_id SET NOT NULL;
COMMIT;
