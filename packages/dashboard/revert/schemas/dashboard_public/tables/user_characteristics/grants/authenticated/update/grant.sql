-- Revert: schemas/dashboard_public/tables/user_characteristics/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_characteristics FROM authenticated;
COMMIT;  

