-- Revert: schemas/dashboard_public/tables/user_actions/grants/authenticated/update/grant/alterations/alt0000000964 from pg

BEGIN;
REVOKE UPDATE ( object_id ) ON TABLE "dashboard_public".user_actions FROM authenticated;
COMMIT;  

