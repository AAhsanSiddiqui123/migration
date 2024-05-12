-- Deploy: schemas/dashboard_public/tables/phone_numbers/columns/owner_id/alterations/alt0000000444 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/phone_numbers/table
-- requires: schemas/dashboard_public/tables/phone_numbers/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".phone_numbers 
    ALTER COLUMN owner_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
