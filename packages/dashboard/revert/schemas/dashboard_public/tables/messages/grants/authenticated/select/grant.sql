-- Revert: schemas/dashboard_public/tables/messages/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".messages FROM authenticated;
COMMIT;  

