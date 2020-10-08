SELECT * FROM tbl_books;

DELETE FROM tbl_member WHERE m_userid = 'admin';

SELECT * FROM tbl_member;

SELECT * FROM tbl_authority;

DELETE FROM tbl_member;

DELETE FROM tbl_authority;

INSERT ALL INTO tbl_authority (m_userid, m_role) VALUES ('admin', 'ADMIN')
    INTO tbl_authority (m_userid, m_role) VALUES ('admin1', 'ADMIN')
    INTO tbl_authority (m_userid, m_role) VALUES ('admin2', 'ADMIN')
    INTO tbl_authority (m_userid, m_role) VALUES ('admin3', 'ADMIN')
SELECT * FROM dual;
    
INSERT ALL INTO tbl_member (m_userid, m_password) VALUES ('user1')
    INTO tbl_member (m_userid, m_password) VALUES ('user2',1)
    INTO tbl_member (m_userid, m_password) VALUES ('user3',1)
    INTO tbl_member (m_userid, m_password) VALUES ('user4',1)
    INTO tbl_member (m_userid, m_password) VALUES ('user5',1)
SELECT * FROM dual;

COMMIT;