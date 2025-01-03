-- object: archive.mosip_regprc_abis_response | type: TABLE --
-- DROP TABLE IF EXISTS archive.mosip_regprc_abis_response CASCADE;
CREATE TABLE archive.mosip_regprc_abis_response(
	id character varying(36) NOT NULL,
	abis_req_id character varying(36),
	resp_dtimes timestamp NOT NULL,
	resp_text bytea,
	status_code character varying(32) NOT NULL,
	status_comment character varying(256),
	lang_code character varying(3) NOT NULL,
	cr_by character varying(256) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	upd_by character varying(256),
	upd_dtimes timestamp,
	is_deleted boolean DEFAULT FALSE,
	del_dtimes timestamp,
	CONSTRAINT pk_abisresp PRIMARY KEY (id),
	CONSTRAINT uk_abisresp UNIQUE (abis_req_id,resp_dtimes)

);
-- ddl-end --
COMMENT ON TABLE archive.mosip_regprc_abis_response IS 'ABIS Response: Stores all the responses that were received from ABIS systems for the request sent.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.id IS 'Response Id: Id of the response received from ABIS application. This is a system generated unique number, can be UUID. This will be used in reference tables';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.abis_req_id IS 'ABIS Request ID: Request id of the ABIS transaction for which ABIS response is received. This request id refers to regprc.abis_request.id';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.resp_dtimes IS 'Response Date Time: Data and Time when the response was received.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.resp_text IS 'Response Text: Text of the response that was received from the ABIS application.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.status_code IS 'Status Code:  Current Status code of the ABIS reponse transaction. Refers to master.status_list.code';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.status_comment IS 'Status Comment: Comments captured as part of packet processing (if any). This can be used in case someone wants to abort the transaction, comments can be provided as additional information.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.lang_code IS 'Language Code : For multilanguage implementation this attribute Refers master.language.code. The value of some of the attributes in current record is stored in this respective language.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.cr_by IS 'Created By : ID or name of the user who create / insert record.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.cr_dtimes IS 'Created DateTimestamp : Date and Timestamp when the record is created/inserted';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.upd_by IS 'Updated By : ID or name of the user who update the record with new values';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.upd_dtimes IS 'Updated DateTimestamp : Date and Timestamp when any of the fields in the record is updated with new values.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.is_deleted IS 'IS_Deleted : Flag to mark whether the record is Soft deleted.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_regprc_abis_response.del_dtimes IS 'Deleted DateTimestamp : Date and Timestamp when the record is soft deleted with is_deleted=TRUE';
-- ddl-end --
