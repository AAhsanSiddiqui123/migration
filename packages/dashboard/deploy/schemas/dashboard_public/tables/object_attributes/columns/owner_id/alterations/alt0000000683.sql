-- Deploy: schemas/dashboard_public/tables/object_attributes/columns/owner_id/alterations/alt0000000683 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table
-- requires: schemas/dashboard_public/tables/object_attributes/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_attributes 
    ALTER COLUMN owner_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
