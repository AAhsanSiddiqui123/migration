-- Deploy: schemas/dashboard_public/tables/phone_numbers/constraints/phone_numbers_number_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/phone_numbers/table

BEGIN;

ALTER TABLE "dashboard_public".phone_numbers
    ADD CONSTRAINT phone_numbers_number_key UNIQUE (number);
COMMIT;
