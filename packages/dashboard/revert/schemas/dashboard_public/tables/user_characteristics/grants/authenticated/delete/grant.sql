-- Revert: schemas/dashboard_public/tables/user_characteristics/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_characteristics FROM authenticated;
COMMIT;  

