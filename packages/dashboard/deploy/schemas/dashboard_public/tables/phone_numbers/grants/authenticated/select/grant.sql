-- Deploy: schemas/dashboard_public/tables/phone_numbers/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/phone_numbers/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".phone_numbers TO authenticated;
COMMIT;
