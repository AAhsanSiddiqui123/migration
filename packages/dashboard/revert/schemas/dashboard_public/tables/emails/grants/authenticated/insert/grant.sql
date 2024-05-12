-- Revert: schemas/dashboard_public/tables/emails/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( email, owner_id, is_primary ) ON TABLE "dashboard_public".emails FROM authenticated;
COMMIT;  

