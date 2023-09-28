
-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS session_id_seq;

-- Table Definition
CREATE TABLE "public"."session" (
    "id" int4 NOT NULL DEFAULT nextval('session_id_seq'::regclass),
    "user_id" int4,
    "last_login" timestamp,
    PRIMARY KEY ("id")
);




CALL user_login( 'jose','123456' );




create or REPLACE TRIGGER create_session_trigger AFTER UPDATE on "user"
FOR EACH ROW 
WHEN (OLD.last_login IS DISTINCT FROM NEW.last_login)
EXECUTE FUNCTION create_session_log();




create or REPLACE FUNCTION create_session_log()
RETURNS TRIGGER as $$

BEGIN
	insert into "session" (user_id, last_login) values ( NEW.id, now() );
	
	return NEW;
END;
$$ LANGUAGE plpgsql;









