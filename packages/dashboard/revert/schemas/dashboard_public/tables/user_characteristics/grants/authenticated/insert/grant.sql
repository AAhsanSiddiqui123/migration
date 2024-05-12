-- Revert: schemas/dashboard_public/tables/user_characteristics/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_characteristics FROM authenticated;
COMMIT;  

