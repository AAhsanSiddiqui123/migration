-- Deploy: schemas/dashboard_public/tables/phone_numbers/triggers/phone_numbers_immutable_cc_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/phone_numbers/table

BEGIN;
CREATE TRIGGER phone_numbers_immutable_cc_tg 
 BEFORE UPDATE ON "dashboard_public".phone_numbers 
 FOR EACH ROW 
 WHEN (OLD.cc IS DISTINCT FROM NEW.cc AND old.cc IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'cc' );
COMMIT;
