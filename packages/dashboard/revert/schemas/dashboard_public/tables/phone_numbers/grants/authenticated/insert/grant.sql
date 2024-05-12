-- Revert: schemas/dashboard_public/tables/phone_numbers/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( cc, number, owner_id, is_primary ) ON TABLE "dashboard_public".phone_numbers FROM authenticated;
COMMIT;  

