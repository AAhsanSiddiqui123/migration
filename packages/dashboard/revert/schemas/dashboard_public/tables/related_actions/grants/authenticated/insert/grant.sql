-- Revert: schemas/dashboard_public/tables/related_actions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".related_actions FROM authenticated;
COMMIT;  

