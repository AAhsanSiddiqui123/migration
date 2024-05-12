-- Revert: schemas/dashboard_public/tables/user_actions/grants/authenticated/insert/grant/alterations/alt0000000963 from pg

BEGIN;
REVOKE INSERT ( object_id ) ON TABLE "dashboard_public".user_actions FROM authenticated;
COMMIT;  

