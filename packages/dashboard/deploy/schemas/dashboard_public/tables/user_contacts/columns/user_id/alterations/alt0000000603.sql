-- Deploy: schemas/dashboard_public/tables/user_contacts/columns/user_id/alterations/alt0000000603 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table
-- requires: schemas/dashboard_public/tables/user_contacts/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_contacts 
    ALTER COLUMN user_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
