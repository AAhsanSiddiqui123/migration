-- Revert: schemas/dashboard_public/tables/user_characteristics/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_characteristics FROM authenticated;
COMMIT;  

