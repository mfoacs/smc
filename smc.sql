--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO wiseweb;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO wiseweb;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO wiseweb;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO wiseweb;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO wiseweb;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO wiseweb;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO wiseweb;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO wiseweb;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO wiseweb;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO wiseweb;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO wiseweb;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO wiseweb;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: blog_blogcategory; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE blog_blogcategory (
    id integer NOT NULL,
    site_id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000)
);


ALTER TABLE public.blog_blogcategory OWNER TO wiseweb;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE blog_blogcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogcategory_id_seq OWNER TO wiseweb;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE blog_blogcategory_id_seq OWNED BY blog_blogcategory.id;


--
-- Name: blog_blogpost; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE blog_blogpost (
    id integer NOT NULL,
    comments_count integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    site_id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    content text NOT NULL,
    user_id integer NOT NULL,
    allow_comments boolean NOT NULL,
    featured_image character varying(255)
);


ALTER TABLE public.blog_blogpost OWNER TO wiseweb;

--
-- Name: blog_blogpost_categories; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE blog_blogpost_categories (
    id integer NOT NULL,
    blogpost_id integer NOT NULL,
    blogcategory_id integer NOT NULL
);


ALTER TABLE public.blog_blogpost_categories OWNER TO wiseweb;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE blog_blogpost_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogpost_categories_id_seq OWNER TO wiseweb;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE blog_blogpost_categories_id_seq OWNED BY blog_blogpost_categories.id;


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE blog_blogpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogpost_id_seq OWNER TO wiseweb;

--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE blog_blogpost_id_seq OWNED BY blog_blogpost.id;


--
-- Name: blog_blogpost_related_posts; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE blog_blogpost_related_posts (
    id integer NOT NULL,
    from_blogpost_id integer NOT NULL,
    to_blogpost_id integer NOT NULL
);


ALTER TABLE public.blog_blogpost_related_posts OWNER TO wiseweb;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE blog_blogpost_related_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogpost_related_posts_id_seq OWNER TO wiseweb;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE blog_blogpost_related_posts_id_seq OWNED BY blog_blogpost_related_posts.id;


--
-- Name: conf_setting; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE conf_setting (
    id integer NOT NULL,
    site_id integer NOT NULL,
    name character varying(50) NOT NULL,
    value character varying(2000) NOT NULL
);


ALTER TABLE public.conf_setting OWNER TO wiseweb;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE conf_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conf_setting_id_seq OWNER TO wiseweb;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE conf_setting_id_seq OWNED BY conf_setting.id;


--
-- Name: core_sitepermission; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE core_sitepermission (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.core_sitepermission OWNER TO wiseweb;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE core_sitepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_sitepermission_id_seq OWNER TO wiseweb;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE core_sitepermission_id_seq OWNED BY core_sitepermission.id;


--
-- Name: core_sitepermission_sites; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE core_sitepermission_sites (
    id integer NOT NULL,
    sitepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.core_sitepermission_sites OWNER TO wiseweb;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE core_sitepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_sitepermission_sites_id_seq OWNER TO wiseweb;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE core_sitepermission_sites_id_seq OWNED BY core_sitepermission_sites.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO wiseweb;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO wiseweb;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE django_comment_flags (
    id integer NOT NULL,
    user_id integer NOT NULL,
    comment_id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_comment_flags OWNER TO wiseweb;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_comment_flags_id_seq OWNER TO wiseweb;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE django_comment_flags_id_seq OWNED BY django_comment_flags.id;


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE django_comments (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_pk text NOT NULL,
    site_id integer NOT NULL,
    user_id integer,
    user_name character varying(50) NOT NULL,
    user_email character varying(75) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL
);


ALTER TABLE public.django_comments OWNER TO wiseweb;

--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_comments_id_seq OWNER TO wiseweb;

--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE django_comments_id_seq OWNED BY django_comments.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO wiseweb;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO wiseweb;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_redirect; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE django_redirect (
    id integer NOT NULL,
    site_id integer NOT NULL,
    old_path character varying(200) NOT NULL,
    new_path character varying(200) NOT NULL
);


ALTER TABLE public.django_redirect OWNER TO wiseweb;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE django_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_redirect_id_seq OWNER TO wiseweb;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE django_redirect_id_seq OWNED BY django_redirect.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO wiseweb;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO wiseweb;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO wiseweb;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: forms_field; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE forms_field (
    id integer NOT NULL,
    _order integer,
    form_id integer NOT NULL,
    label character varying(200) NOT NULL,
    field_type integer NOT NULL,
    required boolean NOT NULL,
    visible boolean NOT NULL,
    choices character varying(1000) NOT NULL,
    "default" character varying(2000) NOT NULL,
    placeholder_text character varying(100) NOT NULL,
    help_text character varying(100) NOT NULL
);


ALTER TABLE public.forms_field OWNER TO wiseweb;

--
-- Name: forms_field_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE forms_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forms_field_id_seq OWNER TO wiseweb;

--
-- Name: forms_field_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE forms_field_id_seq OWNED BY forms_field.id;


--
-- Name: forms_fieldentry; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE forms_fieldentry (
    id integer NOT NULL,
    entry_id integer NOT NULL,
    field_id integer NOT NULL,
    value character varying(2000)
);


ALTER TABLE public.forms_fieldentry OWNER TO wiseweb;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE forms_fieldentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forms_fieldentry_id_seq OWNER TO wiseweb;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE forms_fieldentry_id_seq OWNED BY forms_fieldentry.id;


--
-- Name: forms_form; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE forms_form (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    button_text character varying(50) NOT NULL,
    response text NOT NULL,
    send_email boolean NOT NULL,
    email_from character varying(75) NOT NULL,
    email_copies character varying(200) NOT NULL,
    email_subject character varying(200) NOT NULL,
    email_message text NOT NULL
);


ALTER TABLE public.forms_form OWNER TO wiseweb;

--
-- Name: forms_formentry; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE forms_formentry (
    id integer NOT NULL,
    form_id integer NOT NULL,
    entry_time timestamp with time zone NOT NULL
);


ALTER TABLE public.forms_formentry OWNER TO wiseweb;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE forms_formentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forms_formentry_id_seq OWNER TO wiseweb;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE forms_formentry_id_seq OWNED BY forms_formentry.id;


--
-- Name: galleries_gallery; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE galleries_gallery (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    zip_import character varying(100) NOT NULL
);


ALTER TABLE public.galleries_gallery OWNER TO wiseweb;

--
-- Name: galleries_galleryimage; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE galleries_galleryimage (
    id integer NOT NULL,
    _order integer,
    gallery_id integer NOT NULL,
    file character varying(200) NOT NULL,
    description character varying(1000) NOT NULL
);


ALTER TABLE public.galleries_galleryimage OWNER TO wiseweb;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE galleries_galleryimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galleries_galleryimage_id_seq OWNER TO wiseweb;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE galleries_galleryimage_id_seq OWNED BY galleries_galleryimage.id;


--
-- Name: generic_assignedkeyword; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE generic_assignedkeyword (
    id integer NOT NULL,
    _order integer,
    keyword_id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_pk integer NOT NULL
);


ALTER TABLE public.generic_assignedkeyword OWNER TO wiseweb;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE generic_assignedkeyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.generic_assignedkeyword_id_seq OWNER TO wiseweb;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE generic_assignedkeyword_id_seq OWNED BY generic_assignedkeyword.id;


--
-- Name: generic_keyword; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE generic_keyword (
    id integer NOT NULL,
    site_id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000)
);


ALTER TABLE public.generic_keyword OWNER TO wiseweb;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE generic_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.generic_keyword_id_seq OWNER TO wiseweb;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE generic_keyword_id_seq OWNED BY generic_keyword.id;


--
-- Name: generic_rating; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE generic_rating (
    id integer NOT NULL,
    value integer NOT NULL,
    rating_date timestamp with time zone,
    content_type_id integer NOT NULL,
    object_pk integer NOT NULL,
    user_id integer
);


ALTER TABLE public.generic_rating OWNER TO wiseweb;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE generic_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.generic_rating_id_seq OWNER TO wiseweb;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE generic_rating_id_seq OWNED BY generic_rating.id;


--
-- Name: generic_threadedcomment; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE generic_threadedcomment (
    comment_ptr_id integer NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    by_author boolean NOT NULL,
    replied_to_id integer
);


ALTER TABLE public.generic_threadedcomment OWNER TO wiseweb;

--
-- Name: mezzanine_slides_slide; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE mezzanine_slides_slide (
    id integer NOT NULL,
    _order integer,
    page_id integer,
    file character varying(200) NOT NULL,
    description character varying(70) NOT NULL
);


ALTER TABLE public.mezzanine_slides_slide OWNER TO wiseweb;

--
-- Name: mezzanine_slides_slide_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE mezzanine_slides_slide_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mezzanine_slides_slide_id_seq OWNER TO wiseweb;

--
-- Name: mezzanine_slides_slide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE mezzanine_slides_slide_id_seq OWNED BY mezzanine_slides_slide.id;


--
-- Name: pages_link; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE pages_link (
    page_ptr_id integer NOT NULL
);


ALTER TABLE public.pages_link OWNER TO wiseweb;

--
-- Name: pages_page; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE pages_page (
    id integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    site_id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    _order integer,
    parent_id integer,
    in_menus character varying(100),
    titles character varying(1000),
    content_model character varying(50),
    login_required boolean NOT NULL
);


ALTER TABLE public.pages_page OWNER TO wiseweb;

--
-- Name: pages_page_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE pages_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_page_id_seq OWNER TO wiseweb;

--
-- Name: pages_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE pages_page_id_seq OWNED BY pages_page.id;


--
-- Name: pages_richtextpage; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE pages_richtextpage (
    page_ptr_id integer NOT NULL,
    content text NOT NULL
);


ALTER TABLE public.pages_richtextpage OWNER TO wiseweb;

--
-- Name: regress_theme_homepageslide; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE regress_theme_homepageslide (
    id integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    site_id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    _order integer,
    image character varying(200) NOT NULL,
    link character varying(2000) NOT NULL
);


ALTER TABLE public.regress_theme_homepageslide OWNER TO wiseweb;

--
-- Name: regress_theme_homepageslide_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE regress_theme_homepageslide_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regress_theme_homepageslide_id_seq OWNER TO wiseweb;

--
-- Name: regress_theme_homepageslide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE regress_theme_homepageslide_id_seq OWNED BY regress_theme_homepageslide.id;


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.south_migrationhistory OWNER TO wiseweb;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.south_migrationhistory_id_seq OWNER TO wiseweb;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: twitter_query; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE twitter_query (
    id integer NOT NULL,
    type character varying(10) NOT NULL,
    value character varying(140) NOT NULL,
    interested boolean NOT NULL
);


ALTER TABLE public.twitter_query OWNER TO wiseweb;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE twitter_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.twitter_query_id_seq OWNER TO wiseweb;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE twitter_query_id_seq OWNED BY twitter_query.id;


--
-- Name: twitter_tweet; Type: TABLE; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE TABLE twitter_tweet (
    id integer NOT NULL,
    remote_id character varying(50) NOT NULL,
    created_at timestamp with time zone,
    text text,
    profile_image_url character varying(200),
    user_name character varying(100),
    full_name character varying(100),
    retweeter_profile_image_url character varying(200),
    retweeter_user_name character varying(100),
    retweeter_full_name character varying(100),
    query_id integer NOT NULL
);


ALTER TABLE public.twitter_tweet OWNER TO wiseweb;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE; Schema: public; Owner: wiseweb
--

CREATE SEQUENCE twitter_tweet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.twitter_tweet_id_seq OWNER TO wiseweb;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wiseweb
--

ALTER SEQUENCE twitter_tweet_id_seq OWNED BY twitter_tweet.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogcategory ALTER COLUMN id SET DEFAULT nextval('blog_blogcategory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogpost ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogpost_categories ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogpost_related_posts ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_related_posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY conf_setting ALTER COLUMN id SET DEFAULT nextval('conf_setting_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY core_sitepermission ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY core_sitepermission_sites ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_comment_flags ALTER COLUMN id SET DEFAULT nextval('django_comment_flags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_comments ALTER COLUMN id SET DEFAULT nextval('django_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_redirect ALTER COLUMN id SET DEFAULT nextval('django_redirect_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY forms_field ALTER COLUMN id SET DEFAULT nextval('forms_field_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY forms_fieldentry ALTER COLUMN id SET DEFAULT nextval('forms_fieldentry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY forms_formentry ALTER COLUMN id SET DEFAULT nextval('forms_formentry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY galleries_galleryimage ALTER COLUMN id SET DEFAULT nextval('galleries_galleryimage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY generic_assignedkeyword ALTER COLUMN id SET DEFAULT nextval('generic_assignedkeyword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY generic_keyword ALTER COLUMN id SET DEFAULT nextval('generic_keyword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY generic_rating ALTER COLUMN id SET DEFAULT nextval('generic_rating_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY mezzanine_slides_slide ALTER COLUMN id SET DEFAULT nextval('mezzanine_slides_slide_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY pages_page ALTER COLUMN id SET DEFAULT nextval('pages_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY regress_theme_homepageslide ALTER COLUMN id SET DEFAULT nextval('regress_theme_homepageslide_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY twitter_query ALTER COLUMN id SET DEFAULT nextval('twitter_query_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY twitter_tweet ALTER COLUMN id SET DEFAULT nextval('twitter_tweet_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add redirect	5	add_redirect
14	Can change redirect	5	change_redirect
15	Can delete redirect	5	delete_redirect
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add Setting	8	add_setting
23	Can change Setting	8	change_setting
24	Can delete Setting	8	delete_setting
25	Can add Site permission	9	add_sitepermission
26	Can change Site permission	9	change_sitepermission
27	Can delete Site permission	9	delete_sitepermission
28	Can add Comment	10	add_threadedcomment
29	Can change Comment	10	change_threadedcomment
30	Can delete Comment	10	delete_threadedcomment
31	Can add Keyword	11	add_keyword
32	Can change Keyword	11	change_keyword
33	Can delete Keyword	11	delete_keyword
34	Can add assigned keyword	12	add_assignedkeyword
35	Can change assigned keyword	12	change_assignedkeyword
36	Can delete assigned keyword	12	delete_assignedkeyword
37	Can add Rating	13	add_rating
38	Can change Rating	13	change_rating
39	Can delete Rating	13	delete_rating
40	Can add Blog post	14	add_blogpost
41	Can change Blog post	14	change_blogpost
42	Can delete Blog post	14	delete_blogpost
43	Can add Blog Category	15	add_blogcategory
44	Can change Blog Category	15	change_blogcategory
45	Can delete Blog Category	15	delete_blogcategory
46	Can add Form	16	add_form
47	Can change Form	16	change_form
48	Can delete Form	16	delete_form
49	Can add Field	17	add_field
50	Can change Field	17	change_field
51	Can delete Field	17	delete_field
52	Can add Form entry	18	add_formentry
53	Can change Form entry	18	change_formentry
54	Can delete Form entry	18	delete_formentry
55	Can add Form field entry	19	add_fieldentry
56	Can change Form field entry	19	change_fieldentry
57	Can delete Form field entry	19	delete_fieldentry
58	Can add Page	20	add_page
59	Can change Page	20	change_page
60	Can delete Page	20	delete_page
61	Can add Rich text page	21	add_richtextpage
62	Can change Rich text page	21	change_richtextpage
63	Can delete Rich text page	21	delete_richtextpage
64	Can add Link	22	add_link
65	Can change Link	22	change_link
66	Can delete Link	22	delete_link
67	Can add Gallery	23	add_gallery
68	Can change Gallery	23	change_gallery
69	Can delete Gallery	23	delete_gallery
70	Can add Image	24	add_galleryimage
71	Can change Image	24	change_galleryimage
72	Can delete Image	24	delete_galleryimage
73	Can add Twitter query	25	add_query
74	Can change Twitter query	25	change_query
75	Can delete Twitter query	25	delete_query
76	Can add Tweet	26	add_tweet
77	Can change Tweet	26	change_tweet
78	Can delete Tweet	26	delete_tweet
79	Can add Slide	27	add_slide
80	Can change Slide	27	change_slide
81	Can delete Slide	27	delete_slide
82	Can add migration history	28	add_migrationhistory
83	Can change migration history	28	change_migrationhistory
84	Can delete migration history	28	delete_migrationhistory
85	Can add log entry	29	add_logentry
86	Can change log entry	29	change_logentry
87	Can delete log entry	29	delete_logentry
88	Can add comment	30	add_comment
89	Can change comment	30	change_comment
90	Can delete comment	30	delete_comment
91	Can moderate comments	30	can_moderate
92	Can add comment flag	31	add_commentflag
93	Can change comment flag	31	change_commentflag
94	Can delete comment flag	31	delete_commentflag
95	Can add home page slide	32	add_homepageslide
96	Can change home page slide	32	change_homepageslide
97	Can delete home page slide	32	delete_homepageslide
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('auth_permission_id_seq', 97, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$10000$FvYLxIMuMCFU$4hkkuJmxT/w02aYw6dGhniFngpV2AD0LLkyidzXGG3I=	2014-03-09 13:45:00.535186+01	t	wiseweb			mdaadmin@wisekey.com	t	t	2013-12-02 11:18:05.366024+01
2	pbkdf2_sha256$10000$14OaN5I0wVdv$S8Ft2JOIjSs7t9QdKa0GxcK1TkNFZu2/RsMV+EHUDJM=	2014-05-17 12:14:00.759341+02	f	ehouweling	Elisabeth	Houweling	elisabeth.houweling@net2000.ch	t	t	2013-12-03 21:42:35+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
78	2	10
79	2	11
80	2	28
81	2	29
82	2	40
83	2	41
84	2	43
85	2	44
86	2	46
87	2	47
88	2	49
89	2	50
90	2	52
91	2	53
92	2	55
93	2	56
94	2	58
95	2	59
96	2	60
97	2	61
98	2	62
99	2	63
100	2	64
101	2	65
102	2	67
103	2	68
104	2	69
105	2	70
106	2	71
107	2	72
108	2	79
109	2	80
110	2	81
111	2	85
112	2	86
113	2	88
114	2	89
115	2	90
116	2	91
117	2	92
118	2	93
119	2	95
120	2	96
121	2	97
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 121, true);


--
-- Data for Name: blog_blogcategory; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY blog_blogcategory (id, site_id, title, slug) FROM stdin;
\.


--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('blog_blogcategory_id_seq', 1, false);


--
-- Data for Name: blog_blogpost; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY blog_blogpost (id, comments_count, keywords_string, rating_count, rating_sum, rating_average, site_id, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, content, user_id, allow_comments, featured_image) FROM stdin;
3	0	Open days	0	0	0	1	Open Day, Journée portes ouvertes	swiss-montessori-centre-open-day-journée-portes-ouvertes	Open Day	When: Saturday 22 March 2014 from 10:00 to 15:00.\nQuand: Samedi 22 Mars 2014 dès 10:00 jusqu'à 15:00.	t	2014-02-09 14:13:58.221545+01	2014-03-03 11:07:24.192223+01	1	2014-02-09 14:13:48+01	\N	\N	t	<h4>When: Saturday 22 March 2014 from 10:00 to 15:00.</h4>\n<p>Quand: Samedi 22 Mars 2014 dès 10:00 jusqu'à 15:00.</p>\n<p><a href="/static/media/uploads/pdf_files/2014-02-03_open.day.22.3.14.pdf" title="Open Days">Download the brochure by clicking here.</a></p>	2	f	uploads/site_images/chrysanthemum.jpg
4	0	Vernissages	1	3	3	1	Friday May 2, 2014 18:00-20:00h: Vernissage of the paintings from Enid Maurer	friday-may-2-2014-1800-2000h-vernissage-of-the-paintings-from-Enid Maurer	Vernissage of Enid Maurer	Paintings of Enid Maurer:	t	2014-02-16 15:48:38.708521+01	2014-04-06 21:34:03.096532+02	2	2014-04-03 17:57:38+02	\N	\N	f	<p>Paintings of Enid Maurer:</p>\n<p></p>\n<p><img src="/static/media/uploads/blog/enids_paint7.png"><img src="/static/media/uploads/blog/enids_paint5.png" style="margin: 30px;"></p>\n<p><img height="593" src="/static/media/uploads/blog/enids_paint_1.png" width="379"><img height="538" src="/static/media/uploads/blog/enids_paint.png" style="margin: 30px;" width="627"><img height="199" src="/static/media/uploads/blog/enids_paint_6.png" width="185"><img src="/static/media/uploads/blog/enids_paint2.png" style="margin: 50px;" width="450"></p>	2	f	uploads/blog/enids_paint5.png
5	0		0	0	0	1	Saturday March 22, 2014 from 10:00 to 15:00: Open Day, Journée Portes Ouvertes	saturday-march-22-2014-from-1000-to-1500-open-day-journée-portes-ouvertes		Open Day, Journée Portes Ouvertes	t	2014-02-24 09:43:16.284971+01	2014-02-24 15:53:28.960744+01	2	2014-02-24 09:43:16+01	\N	\N	t	<p>Open Day, Journée Portes Ouvertes</p>\n<p>When: Saturday 22 March 2014 from 10:00 to 15:00.</p>\n<p>Quand: Samedi 22 Mars 2014 dès 10:00 jusqu'au 15:00.</p>\n<p><a href="/static/media/uploads/pdf_files/2014-02-03_open.day.22.3.14.pdf">Download the pamphlet by clicking here</a></p>	2	t	uploads/blog/school.building.93_092.jpg
6	0		0	0	0	1	Thursday June 19, 2014: The Face Painting Morning 	thursday-june-19-2014-the-face-painting-morning	Thursday June 19, 2014: The Face Painting Morning	On June 19, 2014 Ms Irina Elkina, Montessori trained teacher, will hold The Face Painting Morning.	t	2014-03-03 11:04:35.700654+01	2014-03-03 11:04:35.700654+01	2	2014-03-03 11:04:35.684863+01	\N	\N	t	<p>On June 19, 2014 Ms Irina Elkina, Montessori trained teacher, will hold The Face Painting Morning.</p>	2	t	uploads/blog/school.74.facep_054.jpg
\.


--
-- Data for Name: blog_blogpost_categories; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY blog_blogpost_categories (id, blogpost_id, blogcategory_id) FROM stdin;
\.


--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('blog_blogpost_categories_id_seq', 1, false);


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('blog_blogpost_id_seq', 6, true);


--
-- Data for Name: blog_blogpost_related_posts; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY blog_blogpost_related_posts (id, from_blogpost_id, to_blogpost_id) FROM stdin;
\.


--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('blog_blogpost_related_posts_id_seq', 1, false);


--
-- Data for Name: conf_setting; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY conf_setting (id, site_id, name, value) FROM stdin;
1	1	GOOGLE_ANALYTICS_ID	
2	1	SEARCH_PER_PAGE	10
3	1	COMMENTS_NUM_LATEST	5
4	1	RICHTEXT_FILTER_LEVEL	1
5	1	TWITTER_CONSUMER_SECRET	
6	1	COMMENTS_UNAPPROVED_VISIBLE	False
7	1	SITE_TAGLINE	Swiss Montessori Centre
8	1	TWITTER_DEFAULT_QUERY_TYPE	search
9	1	COMMENTS_REMOVED_VISIBLE	False
10	1	TWITTER_DEFAULT_NUM_TWEETS	3
11	1	BITLY_ACCESS_TOKEN	
12	1	SSL_ENABLED	False
13	1	AKISMET_API_KEY	
14	1	COMMENTS_DEFAULT_APPROVED	True
15	1	TWITTER_ACCESS_TOKEN_KEY	
16	1	TWITTER_DEFAULT_QUERY	django mezzanine
17	1	SITE_TITLE	SMC
18	1	BLOG_POST_PER_PAGE	5
19	1	COMMENTS_NOTIFICATION_EMAILS	
20	1	COMMENTS_DISQUS_API_PUBLIC_KEY	
21	1	COMMENTS_DISQUS_API_SECRET_KEY	
22	1	TWITTER_CONSUMER_KEY	
23	1	COMMENTS_ACCOUNT_REQUIRED	True
24	1	MAX_PAGING_LINKS	10
25	1	TWITTER_ACCESS_TOKEN_SECRET	
26	1	TAG_CLOUD_SIZES	4
27	1	COMMENTS_DISQUS_SHORTNAME	
28	1	SSL_FORCE_HOST	
29	1	RATINGS_ACCOUNT_REQUIRED	False
\.


--
-- Name: conf_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('conf_setting_id_seq', 29, true);


--
-- Data for Name: core_sitepermission; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY core_sitepermission (id, user_id) FROM stdin;
1	2
\.


--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('core_sitepermission_id_seq', 1, true);


--
-- Data for Name: core_sitepermission_sites; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY core_sitepermission_sites (id, sitepermission_id, site_id) FROM stdin;
1	1	1
\.


--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('core_sitepermission_sites_id_seq', 1, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2013-12-02 13:57:59.426156+01	1	21	1	News	2	Changed title and content.
2	2013-12-02 14:00:50.789287+01	1	21	2	About	1	
3	2013-12-02 14:17:53.545682+01	1	23	3	2011-2012	1	
4	2013-12-02 14:27:38.74874+01	1	23	3	2011-2012	2	Added Image "Smc   Painting 022   Copie".
5	2013-12-02 14:29:27.181941+01	1	23	3	2011-2012	2	Changed zip_import. Deleted Image "Classroom 041". Deleted Image "Smc   Painting 022   Copie".
6	2013-12-02 14:30:47.80463+01	1	23	3	Gallery 2011-2012	2	Changed title.
7	2013-12-02 14:31:09.096728+01	1	21	4	Galleries	1	
8	2013-12-02 14:43:53.017051+01	1	21	5	The Centre	1	
9	2013-12-02 14:45:36.714212+01	1	21	6	Program	1	
10	2013-12-02 14:51:35.887943+01	1	21	5	The Centre	2	Changed content and description.
11	2013-12-02 14:58:38.894301+01	1	21	5	The Centre	2	Changed content and description.
12	2013-12-02 15:07:28.678397+01	1	21	7	The Centre / Management	1	
13	2013-12-02 15:09:19.662618+01	1	21	8	The Centre / Location	1	
14	2013-12-02 15:09:47.095343+01	1	21	9	The Centre / Contact	1	
15	2013-12-02 15:10:26.508934+01	1	21	10	The Centre / Contact / Opening Hours	1	
16	2013-12-02 15:11:13.638452+01	1	21	10	The Centre / Contact / Opening Hours	2	Changed content.
17	2013-12-02 15:11:54.557104+01	1	21	6	Program	2	Changed content.
18	2013-12-02 15:13:35.155586+01	1	14	1	Open Days	1	
19	2013-12-02 15:14:56.394507+01	1	14	1	Open Days	2	Changed content.
20	2013-12-02 16:20:50.564563+01	1	23	3	Galleries / 2011-2012	2	Changed title.
21	2013-12-03 20:56:54.752051+01	1	21	11	History	1	
22	2013-12-03 21:15:33.997698+01	1	21	7	The Centre / Management	2	Changed content.
23	2013-12-03 21:17:09.719954+01	1	21	11	History	2	Changed content.
24	2013-12-03 21:18:09.637616+01	1	21	11	History	2	Changed content.
25	2013-12-03 21:29:30.850169+01	1	21	11	History	2	Changed content.
26	2013-12-03 21:32:47.701484+01	1	21	12	Method	1	
27	2013-12-03 21:35:33.278109+01	1	23	3	Galleries / 2011	2	Changed title.
28	2013-12-03 21:37:34.774781+01	1	23	13	Galleries / 2012	1	
29	2013-12-03 21:38:28.007189+01	1	23	3	Galleries / 2011	2	Changed content.
30	2013-12-03 21:39:10.078046+01	1	21	14	Links	1	
31	2013-12-03 21:42:35.453901+01	1	3	2	ehoweling	1	
32	2013-12-03 21:43:36.081393+01	1	3	2	ehouweling	2	Changed username, password, first_name, last_name and is_staff.
33	2013-12-03 21:44:52.526471+01	1	3	2	ehouweling	2	Changed password and email.
34	2013-12-05 00:11:22.306562+01	1	3	2	ehouweling	2	Changed password and user_permissions.
35	2013-12-05 00:14:49.326078+01	1	3	2	ehouweling	2	Changed password and user_permissions.
36	2013-12-08 20:43:29.821819+01	1	23	13	Galleries / 2012	2	Changed _order for Image "Class   Alps 005". Changed _order for Image "Classroom 003". Changed _order for Image "Classroom 041". Changed _order for Image "Display   School 001". Changed _order for Image "Display   School 005". Changed _order for Image "Display   School 008". Changed _order for Image "Display   School 016". Changed _order for Image "Display   School 019". Changed _order for Image "Display   School 048". Changed _order for Image "Hib School Carcate 018". Changed _order for Image "Rene School 003". Changed _order for Image "Rene School 015". Changed _order for Image "Rene School 018". Changed _order for Image "School 001". Changed _order for Image "School 002". Changed _order for Image "School 003". Changed _order for Image "School 006". Changed _order for Image "School 008". Changed _order for Image "School 009". Changed _order for Image "School 010". Changed _order for Image "School 012". Changed _order for Image "School 013". Changed _order for Image "School 014". Changed _order for Image "School 015". Changed _order for Image "School 016". Changed _order for Image "School 017". Changed _order for Image "School 019". Changed _order for Image "School 020". Changed _order for Image "School 021". Changed _order for Image "School 025". Changed _order for Image "School 026". Changed _order for Image "School 027". Changed _order for Image "School 031". Changed _order for Image "School 032". Changed _order for Image "School 033". Changed _order for Image "School 041". Changed _order for Image "School 049". Changed _order for Image "School 051". Changed _order for Image "School Act 027". Changed _order for Image "Schoolm Env 039". Changed _order for Image "Smc   Wedding Veil 007". Deleted Image "School 001 1". Deleted Image "School 008 1". Deleted Image "School 008 2". Deleted Image "School 009 1". Deleted Image "School 010 1". Deleted Image "School 012 1". Deleted Image "School 012 2". Deleted Image "School 013 1". Deleted Image "School 014 1". Deleted Image "School 014 2". Deleted Image "School 020 1". Deleted Image "School 025 1". Deleted Image "School 032 1". Deleted Image "School 049 1".
37	2013-12-08 20:44:42.825887+01	1	23	3	Galleries / 2011	2	Changed _order for Image "Class   Alps 005". Changed _order for Image "School Act 027". Changed _order for Image "School 010". Changed _order for Image "School 016". Changed _order for Image "Schoolm Env 039". Changed _order for Image "School 021". Changed _order for Image "School 014". Changed _order for Image "Display   School 019". Changed _order for Image "School 033". Changed _order for Image "School 041". Changed _order for Image "School 015". Changed _order for Image "School 008". Changed _order for Image "Display   School 008". Changed _order for Image "Rene School 015". Changed _order for Image "Hib School Carcate 018". Changed _order for Image "School 051". Changed _order for Image "School 020". Changed _order for Image "Display   School 001". Changed _order for Image "School 017". Changed _order for Image "School 032". Changed _order for Image "School 012". Changed _order for Image "Display   School 005". Changed _order for Image "School 001". Changed _order for Image "School 013". Changed _order for Image "School 006". Changed _order for Image "Display   School 048". Changed _order for Image "School 049". Changed _order for Image "Rene School 003". Changed _order for Image "Smc   Wedding Veil 007". Changed _order for Image "School 031". Deleted Image "School 014 1". Deleted Image "School 009 1". Deleted Image "School 008 1". Deleted Image "School 049 1". Deleted Image "School 001 1". Deleted Image "School 012 1". Deleted Image "School 025 1". Deleted Image "School 012 2". Deleted Image "School 032 1". Deleted Image "School 013 1". Deleted Image "School 014 2". Deleted Image "School 008 2". Deleted Image "School 020 1". Deleted Image "School 010 1".
38	2013-12-11 10:00:28.276017+01	1	21	10	The Centre / Contact / Opening Hours	2	Changed content.
39	2013-12-11 10:00:45.409621+01	1	21	6	The Centre / Program	2	Changed content.
40	2013-12-11 10:03:34.141912+01	1	21	6	The Centre / Program	2	Changed content and description.
41	2013-12-11 10:04:20.264153+01	1	21	6	The Centre / Program	2	Changed content and description.
42	2013-12-11 10:04:56.869509+01	1	21	6	The Centre / Program	2	Changed content and description.
43	2013-12-11 10:10:34.934453+01	1	21	8	The Centre / Location	2	Changed content and description.
44	2013-12-11 10:12:02.66008+01	1	21	8	The Centre / Location	2	Changed content and description.
45	2013-12-11 10:12:47.134106+01	1	21	8	The Centre / Location	2	Changed content and description.
46	2013-12-11 10:13:10.81399+01	1	21	2	About	2	Changed content.
47	2013-12-11 10:14:10.841386+01	1	21	12	About / Method	2	Changed content and description.
48	2013-12-11 10:21:18.65613+01	1	21	5	The Centre	2	Changed content and description.
49	2013-12-11 10:28:39.216228+01	1	21	5	The Centre	2	Changed content and description.
50	2013-12-11 10:28:46.662533+01	1	21	14	Links	2	Changed content.
51	2013-12-11 10:29:01.666589+01	1	21	1	News	2	Changed content.
52	2013-12-11 10:34:09.704455+01	1	21	4	Galleries	2	Changed content.
53	2013-12-11 10:35:32.086994+01	1	21	2	About	2	Changed content.
54	2013-12-11 10:39:15.137323+01	1	21	2	About	2	Changed content.
55	2013-12-11 10:40:39.841305+01	1	21	11	About / History	2	Changed content.
56	2013-12-11 10:41:06.034406+01	1	21	11	About / History	2	Changed content.
57	2013-12-11 10:44:21.514042+01	1	21	4	Galleries	2	Changed content and description.
58	2013-12-11 10:51:59.461824+01	1	14	1	Open Days	2	Changed content and description.
59	2013-12-11 10:53:09.89282+01	1	14	1	Open Days	2	Changed content, allow_comments and description.
60	2013-12-11 17:44:19.869454+01	2	21	7	The Centre / Management	2	Changed content.
61	2013-12-11 17:44:54.381269+01	2	21	7	The Centre / Management	2	Changed content.
62	2013-12-11 18:01:04.434989+01	2	21	5	The Centre	2	Changed content.
63	2013-12-11 18:15:39.842692+01	2	21	7	The Centre / Management	2	Changed content.
64	2013-12-11 18:21:00.315449+01	2	21	7	The Centre / Management	2	Changed content.
65	2013-12-11 18:23:13.900965+01	2	21	7	The Centre / Management	2	Changed content.
66	2013-12-11 18:23:42.464221+01	2	21	7	The Centre / Management	2	Changed content.
67	2013-12-11 18:25:31.610478+01	2	21	7	The Centre / Management	2	Changed content.
68	2013-12-17 21:49:54.560848+01	2	23	13	Galleries / 2012	2	Changed content.
69	2013-12-17 22:06:05.40312+01	2	21	2	About	2	Changed content.
70	2013-12-18 20:58:02.947954+01	2	21	7	The Centre / Management	2	Changed content.
71	2013-12-19 11:38:04.871839+01	2	23	13	Galleries / 2012	2	Changed content.
72	2013-12-21 10:09:48.416096+01	1	14	1	Open Days	3	
73	2013-12-21 10:18:17.363771+01	1	14	2	testblogpost	1	
74	2013-12-21 12:54:13.69738+01	1	23	15	Galleries / TEST Gallery	1	
75	2013-12-27 18:24:49.674368+01	2	21	2	About	2	Changed content.
76	2013-12-27 18:40:54.50203+01	2	23	16	Galleries / 2013	1	
77	2013-12-27 19:05:34.566237+01	2	23	16	Galleries / 2013	3	
78	2013-12-27 21:29:44.833903+01	2	23	17	Galleries / 2013	1	
79	2013-12-27 21:46:20.272436+01	2	23	17	Galleries / 2013	2	Changed content. Changed _order for Image "Middle Ages Show 032". Changed _order for Image "School 29 014". Changed _order for Image "School 36 007". Changed _order for Image "School 36 019". Changed _order for Image "School 51 006". Changed _order for Image "School 51 013". Changed _order for Image "School 51 026". Changed _order for Image "School 56 019". Changed _order for Image "School 72 021". Changed _order for Image "School 72 047". Changed _order for Image "School 72 051". Changed _order for Image "School 73 Display Openday 058". Changed _order for Image "School 74 Facep 059". Changed _order for Image "School 74 Facep 065". Changed _order for Image "School 74 Facep 080". Changed _order for Image "School 75 021". Changed _order for Image "School 75 090". Changed _order for Image "School 76 184". Changed _order for Image "School 76 196". Changed _order for Image "School 76 207". Changed _order for Image "School 78 007". Changed _order for Image "School 78 020". Changed _order for Image "School 82 002". Changed _order for Image "School 82 027". Changed _order for Image "School 82 028". Changed _order for Image "School 82 029". Changed _order for Image "School 82 040". Changed _order for Image "School 82 041". Changed _order for Image "School 82 045". Changed _order for Image "School 82 071". Changed _order for Image "School 82 076". Changed _order for Image "School 84 010". Changed _order for Image "School 84 029". Changed _order for Image "School 84 052". Changed _order for Image "School And Lgs 009". Changed _order for Image "School And Lgs 017". Changed _order for Image "School And Lgs 023". Changed _order for Image "School And Lgs 025". Changed _order for Image "School And Lgs 035". Changed _order for Image "School And Lgs 060". Changed _order for Image "School Christmas 008". Changed _order for Image "School Christmas 015". Changed _order for Image "School Christmas 033". Changed _order for Image "School Lia 80 047". Changed _order for Image "School Lia 80 052". Changed _order for Image "School Lia 80 057". Changed _order for Image "School Opend 59 072". Changed _order for Image "Tjerk Lia Finn 068".
80	2013-12-28 14:52:20.558213+01	2	21	4	Galleries	2	Changed content.
81	2013-12-29 15:00:04.4475+01	2	21	2	About	2	Changed content.
82	2013-12-30 11:54:06.670337+01	2	21	2	About	2	Changed content.
83	2013-12-31 19:53:36.880118+01	2	21	2	About	2	Changed content.
84	2013-12-31 19:59:37.959043+01	2	21	2	About	2	Changed content.
85	2013-12-31 20:00:10.007074+01	2	21	2	About	2	Changed content.
86	2013-12-31 20:00:46.941055+01	2	21	2	About	2	Changed content.
87	2013-12-31 20:01:49.127416+01	2	21	2	About	2	Changed content.
88	2013-12-31 21:58:57.555754+01	2	21	2	About	2	Changed content.
89	2013-12-31 23:11:41.360296+01	2	21	4	Galleries	2	Changed content and description.
90	2013-12-31 23:24:29.421609+01	2	21	6	The Centre / Program	2	Changed content.
91	2013-12-31 23:47:13.937206+01	2	21	5	The Centre	2	Changed content and description.
92	2014-01-01 10:40:24.724915+01	2	21	5	The Centre	2	Changed content and description.
93	2014-01-01 10:45:46.469993+01	2	21	7	The Centre / Management	2	Changed content.
94	2014-01-01 10:46:55.420915+01	2	21	7	The Centre / Management	2	Changed content.
95	2014-01-01 10:47:11.190216+01	2	21	7	The Centre / Management	2	Changed content.
96	2014-01-01 10:48:33.024792+01	2	21	8	The Centre / Location	2	Changed content.
97	2014-01-01 10:49:49.173055+01	2	21	8	The Centre / Location	2	Changed content.
98	2014-01-01 10:50:18.511098+01	2	21	9	The Centre / Contact	2	Changed content.
99	2014-01-01 10:50:38.049088+01	2	21	9	The Centre / Contact	2	Changed content.
100	2014-01-01 10:52:41.068232+01	2	21	5	The Centre	2	Changed content.
101	2014-01-01 10:54:28.294957+01	2	21	5	The Centre	2	Changed content.
102	2014-01-01 10:55:57.369927+01	2	21	5	The Centre	2	Changed content.
103	2014-01-01 10:56:40.438929+01	2	21	5	The Centre	2	Changed content.
104	2014-01-01 10:58:21.554704+01	2	21	5	The Centre	2	Changed content.
105	2014-01-01 11:00:23.007091+01	2	21	10	The Centre / Contact / Opening Hours	2	Changed content.
106	2014-01-01 11:00:48.311048+01	2	21	10	The Centre / Contact / Opening Hours	2	Changed content.
107	2014-01-01 11:02:36.765266+01	2	21	6	The Centre / Program	2	Changed content.
108	2014-01-01 11:08:16.730834+01	2	21	14	Links	2	Changed content.
109	2014-01-01 11:09:01.417391+01	2	21	14	Links	2	Changed content.
110	2014-01-01 11:10:43.579225+01	2	21	2	About	2	Changed content.
111	2014-01-01 11:16:40.224022+01	2	21	5	The Centre	2	Changed content.
112	2014-01-01 11:19:23.83864+01	2	21	5	The Centre	2	Changed content and description.
113	2014-01-01 11:21:50.082929+01	2	21	5	The Centre	2	Changed content and description.
114	2014-01-01 11:24:48.882837+01	2	21	5	The Centre	2	Changed content.
115	2014-01-01 11:25:24.356481+01	2	21	5	The Centre	2	Changed content.
116	2014-01-01 11:27:14.097552+01	2	21	5	The Centre	2	Changed content.
117	2014-01-01 11:27:45.546782+01	2	21	5	The Centre	2	Changed content.
118	2014-01-01 11:29:43.043732+01	2	21	5	The Centre	2	Changed content.
119	2014-01-01 11:30:29.811026+01	2	21	5	The Centre	2	Changed content.
120	2014-01-01 11:32:31.018188+01	2	21	11	About / History	2	Changed content.
121	2014-01-01 13:03:52.211488+01	2	21	11	About / History	2	Changed content.
122	2014-01-01 13:05:03.206804+01	2	21	11	About / History	2	Changed content.
123	2014-01-01 13:05:45.119183+01	2	21	11	About / History	2	Changed content.
124	2014-01-01 13:14:38.048111+01	2	21	11	About / History	2	Changed content.
125	2014-01-01 13:51:01.088047+01	2	21	2	About	2	Changed content.
126	2014-01-01 14:08:47.566666+01	2	21	11	About / History	2	Changed content.
127	2014-01-01 14:33:14.261921+01	2	21	12	About / Method	2	Changed content.
128	2014-01-01 14:35:36.821641+01	2	21	12	About / Method	2	Changed content.
129	2014-01-01 14:36:45.374762+01	2	21	12	About / Method	2	Changed content.
130	2014-01-01 14:38:43.671144+01	2	21	12	About / Method	2	Changed content.
131	2014-01-01 14:40:04.837394+01	2	21	12	About / Method	2	Changed content.
132	2014-01-01 14:40:57.907578+01	2	21	12	About / Method	2	Changed content.
133	2014-01-01 14:42:46.797724+01	2	21	12	About / Method	2	Changed content.
134	2014-01-01 14:44:21.740828+01	2	21	12	About / Method	2	Changed content.
135	2014-01-01 14:45:59.126941+01	2	21	12	About / Method	2	Changed content.
136	2014-01-01 14:47:31.274081+01	2	21	12	About / Method	2	Changed content.
137	2014-01-01 14:48:06.549559+01	2	21	12	About / Method	2	Changed content.
138	2014-01-01 14:49:00.434755+01	2	21	12	About / Method	2	Changed content.
139	2014-01-01 14:49:41.85065+01	2	21	12	About / Method	2	Changed content.
140	2014-01-01 14:50:57.602744+01	2	21	5	The Centre	2	Changed content.
141	2014-01-01 15:08:27.788616+01	2	21	6	The Centre / Program	2	Changed content.
142	2014-01-01 15:09:28.071062+01	2	21	6	The Centre / Program	2	Changed content.
143	2014-01-01 15:09:58.030859+01	2	21	6	The Centre / Program	2	Changed content.
144	2014-01-01 15:11:31.166362+01	2	21	6	The Centre / Program	2	Changed content.
145	2014-01-01 15:12:20.81886+01	2	21	6	The Centre / Program	2	Changed content.
146	2014-01-01 15:12:50.705482+01	2	21	6	The Centre / Program	2	Changed content.
147	2014-01-01 15:13:17.453725+01	2	21	6	The Centre / Program	2	Changed content.
148	2014-01-01 15:17:58.700792+01	2	21	7	The Centre / Management	2	Changed content.
149	2014-01-01 15:19:47.284494+01	2	21	7	The Centre / Management	2	Changed content.
150	2014-01-01 17:26:45.825831+01	2	21	7	The Centre / Management	2	Changed content.
151	2014-01-01 17:30:14.584418+01	2	21	11	About / History	2	Changed content.
152	2014-01-01 17:31:45.586105+01	2	21	7	The Centre / Management	2	Changed content.
153	2014-01-01 17:45:50.812492+01	2	21	5	The Centre	2	Changed content and description.
154	2014-01-01 17:54:55.687885+01	2	21	7	The Centre / Management	2	Changed content.
155	2014-01-01 18:07:15.956997+01	2	21	12	About / Method	2	Changed content.
156	2014-01-01 21:30:50.434844+01	2	21	5	The Centre	2	Changed content and description.
157	2014-01-01 21:32:32.294639+01	2	21	5	The Centre	2	Changed content.
158	2014-01-01 21:33:29.837621+01	2	21	8	The Centre / Location	2	Changed content.
159	2014-01-01 21:35:31.908743+01	2	21	8	The Centre / Location	2	Changed content.
160	2014-01-01 21:35:48.459078+01	2	21	8	The Centre / Location	2	Changed content.
161	2014-01-01 21:37:28.575706+01	2	21	6	The Centre / Program	2	Changed content.
162	2014-01-01 21:40:16.230832+01	2	21	5	The Centre	2	Changed content.
163	2014-01-02 08:31:10.711777+01	2	21	5	The Centre	2	Changed content and description.
164	2014-01-02 08:33:04.318447+01	2	21	7	The Centre / Management	2	Changed content.
165	2014-01-02 08:34:36.485371+01	2	21	8	The Centre / Location	2	Changed content and description.
166	2014-01-02 08:37:39.974681+01	2	21	12	About / Method	2	Changed content and description.
167	2014-02-09 14:11:50.586968+01	2	21	1	News	2	Changed content.
168	2014-02-09 14:12:34.922504+01	2	21	1	News	2	Changed content and description.
169	2014-02-09 14:13:58.29297+01	2	14	3	Swiss Montessori Centre - Open Day, Journée portes ouvertes	1	
170	2014-02-09 14:15:06.948127+01	2	23	15	Galleries / TEST Gallery	2	Changed in_menus. Changed _order for Image "100 7696". Changed _order for Image "100 7697". Changed _order for Image "100 7698". Changed _order for Image "100 7700". Changed _order for Image "100 7701". Changed _order for Image "100 7704". Changed _order for Image "100 7705". Changed _order for Image "100 7708". Changed _order for Image "100 7710". Changed _order for Image "100 7712". Changed _order for Image "100 7714". Changed _order for Image "100 7719". Changed _order for Image "100 7720". Changed _order for Image "100 7723". Changed _order for Image "100 7725". Changed _order for Image "100 7726". Changed _order for Image "100 7727". Changed _order for Image "100 7728". Changed _order for Image "100 7730". Changed _order for Image "100 7732". Changed _order for Image "100 7733". Changed _order for Image "100 7736". Changed _order for Image "100 7737". Changed _order for Image "100 7739". Changed _order for Image "100 7741". Changed _order for Image "100 7742". Changed _order for Image "100 7744".
171	2014-02-09 14:27:31.680051+01	1	14	3	Swiss Montessori Centre - Open Day, Journée portes ouvertes	2	Changed content and description.
172	2014-02-09 14:27:42.574324+01	1	14	2	testblogpost	3	
173	2014-02-09 14:41:30.637548+01	1	21	6	The Centre / Program	2	Changed content and description.
174	2014-02-09 14:42:44.311193+01	1	21	1	News	2	Changed content and description.
175	2014-02-09 14:44:22.438994+01	1	21	1	News	2	Changed content.
176	2014-02-09 14:45:06.189428+01	1	14	3	Swiss Montessori Centre - Open Day, Journée portes ouvertes	2	Changed content and description.
177	2014-02-09 14:45:57.402431+01	1	14	3	Swiss Montessori Centre - Open Day, Journée portes ouvertes	2	Changed content and description.
178	2014-02-09 14:47:21.708298+01	1	14	3	Swiss Montessori Centre	2	Changed title, content and description.
179	2014-02-09 14:47:59.221312+01	1	14	3	Open Day, Journée portes ouvertes	2	Changed title, content and description.
180	2014-02-09 14:49:07.726893+01	1	14	3	Open Day, Journée portes ouvertes	2	Changed content and description.
181	2014-02-09 22:06:31.369917+01	2	21	6	The Centre / Program	2	Changed content and description.
182	2014-02-09 22:10:37.211127+01	2	21	6	The Centre / Program	2	Changed content and description.
183	2014-02-09 22:12:38.916544+01	2	21	6	The Centre / Program	2	Changed content.
184	2014-02-09 22:17:51.385548+01	2	21	6	The Centre / Program	2	Changed status, content and description.
185	2014-02-09 22:37:24.065855+01	2	21	6	The Centre / Program	2	Changed content.
186	2014-02-09 22:38:06.273565+01	2	21	6	The Centre / Program	2	Changed status, content and description.
187	2014-02-09 22:41:27.380548+01	2	21	6	The Centre / Program	2	Changed content and description.
188	2014-02-09 22:49:18.87499+01	2	21	6	The Centre / Program	2	Changed content and description.
189	2014-02-16 15:48:38.727307+01	2	14	4	Friday May 2, 2014 18.00-19.30h: Vernissage of the paintings from Symany	1	
190	2014-02-16 20:29:13.529932+01	1	14	4	Friday May 2, 2014 18.00-19.30h: Vernissage of the paintings from Symany	2	Changed content.
191	2014-02-16 20:30:23.059203+01	1	14	4	Friday May 2, 2014 18.00-19.30h: Vernissage of the paintings from Symany	2	Changed content and allow_comments.
192	2014-02-16 21:52:31.92172+01	2	14	4	Friday May 2, 2014 18.00-19.30h: Vernissage of the paintings from Symany	2	Changed status and content.
193	2014-02-16 22:53:06.786472+01	2	14	4	Friday May 2, 2014 18:00-19:30h: Vernissage of the paintings from Symany	2	Changed title and content.
194	2014-02-22 15:05:33.797997+01	1	32	1	Nieuhaus Materials	1	
195	2014-02-22 15:06:04.674689+01	1	32	1	Nieuhaus Materials	2	Changed image.
196	2014-02-22 15:06:17.784074+01	1	32	2	Nieuhaus Materials	1	
197	2014-02-22 15:06:38.571092+01	1	32	3	Nieuhaus Materials 3	1	
198	2014-02-22 15:06:45.444824+01	1	32	2	Nieuhaus Materials 2	2	Changed title.
199	2014-02-22 15:06:51.376572+01	1	32	1	Nieuhaus Materials 1	2	Changed title.
200	2014-02-22 15:08:21.374914+01	1	32	1	Nienhuis	2	Changed title.
201	2014-02-22 15:08:40.234539+01	1	32	2	Nienhuis Cubes	2	Changed title.
202	2014-02-22 15:09:00.610671+01	1	32	2	Nienhuis geometric forms	2	Changed title.
203	2014-02-22 15:09:12.814942+01	1	32	3	Nienhuis tower	2	Changed title.
204	2014-02-22 15:18:16.606266+01	1	14	3	Open Day, Journée portes ouvertes	2	Changed featured_image, content and description.
205	2014-02-22 15:19:11.050485+01	1	14	4	Friday May 2, 2014 18:00-19:30h: Vernissage of the paintings from Symany	2	Changed content.
206	2014-02-22 15:24:17.03074+01	1	14	3	Open Day, Journée portes ouvertes	2	Changed featured_image, content, _meta_title and description.
207	2014-02-22 15:25:15.370953+01	1	14	4	Friday May 2, 2014 18:00-19:30h: Vernissage of the paintings from Symany	2	Changed featured_image, content and _meta_title.
208	2014-02-22 15:53:16.674116+01	1	14	4	Friday May 2, 2014 18:00-19:30h: Vernissage of the paintings from Symany	2	Changed featured_image and content.
209	2014-02-22 15:54:50.341481+01	1	14	4	Friday May 2, 2014 18:00-19:30h: Vernissage of the paintings from Symany	2	Changed content.
210	2014-02-22 15:55:59.893194+01	1	23	15	Galleries / TEST Gallery	3	
211	2014-02-22 16:15:34.887521+01	1	23	3	Galleries / 2011	2	Changed in_menus. Changed _order for Image "Class   Alps 005". Changed _order for Image "School Act 027". Changed _order for Image "School 010". Changed _order for Image "School 016". Changed _order for Image "Schoolm Env 039". Changed _order for Image "School 021". Changed _order for Image "School 014". Changed _order for Image "Display   School 019". Changed _order for Image "School 033". Changed _order for Image "School 041". Changed _order for Image "School 015". Changed _order for Image "School 008". Changed _order for Image "Display   School 008". Changed _order for Image "Rene School 015". Changed _order for Image "Hib School Carcate 018". Changed _order for Image "School 051". Changed _order for Image "School 020". Changed _order for Image "Display   School 001". Changed _order for Image "School 017". Changed _order for Image "School 032". Changed _order for Image "School 012". Changed _order for Image "Display   School 005". Changed _order for Image "School 001". Changed _order for Image "School 013". Changed _order for Image "School 006". Changed _order for Image "Display   School 048". Changed _order for Image "School 049". Changed _order for Image "Rene School 003". Changed _order for Image "Smc   Wedding Veil 007". Changed _order for Image "School 031".
212	2014-02-22 16:16:01.412524+01	1	21	4	Galleries	2	Changed content, in_menus and description.
213	2014-02-22 16:17:59.016531+01	1	14	3	Open Day, Journée portes ouvertes	2	Changed content and description.
214	2014-02-22 16:20:50.973428+01	1	21	4	Galleries	2	Changed content, in_menus and description.
215	2014-02-22 16:21:32.797058+01	1	21	4	Galleries	2	Changed content, in_menus and description.
216	2014-02-22 16:26:03.137187+01	1	21	4	Galleries	2	Changed content, in_menus and description.
217	2014-02-22 16:48:46.727675+01	1	23	3	Galleries / 2011	2	Changed in_menus.
218	2014-02-22 19:03:36.905208+01	1	32	1	Nienhuis	2	Changed _order.
219	2014-02-22 19:03:36.915761+01	1	32	2	Nienhuis geometric forms	2	Changed _order.
220	2014-02-22 19:03:36.924181+01	1	32	3	Nienhuis tower	2	Changed _order.
221	2014-02-22 19:04:50.148297+01	1	32	1	Nienhuis Mathematical Glass Squares	2	Changed title and image.
222	2014-02-22 19:06:25.769085+01	1	32	3	Nienhuis Sensorial Pink Tower	2	Changed title.
223	2014-02-22 19:06:44.032597+01	1	32	2	Nienhuis Sensorial Geometric Solids	2	Changed title.
224	2014-02-22 19:07:25.844392+01	1	14	3	Open Day, Journée portes ouvertes	2	Changed featured_image, content and description.
225	2014-02-22 19:08:38.605148+01	1	14	3	Open Day, Journée portes ouvertes	2	Changed featured_image, content and description.
226	2014-02-22 19:39:03.833078+01	1	14	3	Open Day, Journée portes ouvertes	2	Changed content, allow_comments and description.
227	2014-02-22 19:53:28.118437+01	1	21	7	The Centre / Management	2	Changed content.
228	2014-02-22 19:57:23.796438+01	1	21	2	About	2	Changed content.
229	2014-02-22 19:57:57.858806+01	1	21	2	About	2	Changed content.
230	2014-02-22 22:36:26.050084+01	1	32	3	Nienhuis Pink Tower and Brown Stair	2	Changed title and image.
231	2014-02-22 22:36:42.748636+01	1	32	2	Nienhuis Sensorial Geometric Solids	2	Changed image.
232	2014-02-22 22:36:53.916392+01	1	32	1	Nienhuis Mathematical Glass Squares	2	No fields changed.
233	2014-02-22 22:39:42.566455+01	1	3	2	ehouweling	2	Changed password and user_permissions.
234	2014-02-22 22:47:00.371219+01	1	21	11	About / History	2	Changed content.
235	2014-02-22 22:48:38.258611+01	1	21	12	About / Method	2	Changed content.
236	2014-02-22 22:49:40.252763+01	1	21	12	About / Method	2	Changed content.
237	2014-02-22 22:51:00.537572+01	1	21	8	The Centre / Location	2	Changed content.
238	2014-02-22 22:52:20.142956+01	1	21	4	Galleries	2	Changed content.
239	2014-02-22 22:52:55.192869+01	1	21	9	The Centre / Contact	2	Changed content.
240	2014-02-22 22:54:09.070266+01	1	21	6	The Centre / Program	2	Changed content.
241	2014-02-24 09:29:17.269294+01	2	14	3	Open Day, Journée portes ouvertes	2	Changed content and description.
242	2014-02-24 09:43:16.304808+01	2	14	5	Saturday March 22, 2014 from 10:00 to 15:00: Open Day, Journée Portes Ouvertes	1	
243	2014-02-24 09:49:03.152794+01	2	14	5	Saturday March 22, 2014 from 10:00 to 15:00: Open Day, Journée Portes Ouvertes	2	Changed status.
244	2014-02-24 15:53:28.979558+01	1	14	5	Saturday March 22, 2014 from 10:00 to 15:00: Open Day, Journée Portes Ouvertes	2	Changed status and content.
245	2014-03-03 11:04:35.741165+01	2	14	6	Thursday June 19, 2014: The Face Painting Morning 	1	
246	2014-03-03 11:07:24.197635+01	2	14	3	Open Day, Journée portes ouvertes	2	Changed status.
247	2014-03-07 15:29:08.515129+01	1	21	1	News	2	Changed content.
248	2014-03-07 21:42:39.259893+01	2	21	7	The Centre / Management	2	Changed content.
249	2014-03-07 21:45:07.2756+01	2	21	6	The Centre / Program	2	Changed content and description.
250	2014-03-07 21:50:12.516793+01	2	21	6	The Centre / Program	2	Changed content and description.
251	2014-03-07 22:00:41.773266+01	2	21	6	The Centre / Program	2	Changed content and description.
252	2014-03-07 22:04:14.772371+01	2	21	7	The Centre / Management	2	Changed content.
253	2014-03-07 22:07:01.054665+01	2	21	6	The Centre / Program	2	Changed content and description.
254	2014-03-07 22:16:31.605715+01	2	21	6	The Centre / Program	2	Changed content and description.
255	2014-03-07 22:18:08.105815+01	2	21	6	The Centre / Program	2	Changed content.
256	2014-03-07 22:20:06.517471+01	2	21	6	The Centre / Program	2	Changed content.
257	2014-03-07 22:24:21.451433+01	2	21	7	The Centre / Management	2	Changed content and description.
258	2014-03-07 22:24:42.728518+01	2	21	7	The Centre / Management	2	Changed content and description.
259	2014-03-07 22:30:44.082243+01	2	21	7	The Centre / Management	2	Changed content and description.
260	2014-03-07 22:31:09.470714+01	2	21	7	The Centre / Management	2	Changed content and description.
261	2014-03-07 22:32:45.624347+01	2	21	7	The Centre / Management	2	Changed content and description.
262	2014-03-07 22:34:48.345859+01	2	21	5	The Centre	2	Changed content and description.
263	2014-03-07 22:40:16.813695+01	2	21	5	The Centre	2	Changed content and description.
264	2014-03-07 22:41:02.784086+01	2	21	5	The Centre	2	Changed content and description.
265	2014-03-07 22:42:04.361277+01	2	21	5	The Centre	2	Changed content and description.
266	2014-03-07 22:42:54.700757+01	2	21	5	The Centre	2	Changed content and description.
267	2014-03-07 22:44:13.917366+01	2	21	5	The Centre	2	Changed content and description.
268	2014-03-07 22:45:47.398923+01	2	21	5	The Centre	2	Changed content.
269	2014-03-07 22:46:27.32951+01	2	21	5	The Centre	2	Changed content.
270	2014-03-07 22:47:10.109731+01	2	21	5	The Centre	2	Changed content.
271	2014-03-07 22:48:24.718289+01	2	21	5	The Centre	2	Changed content.
272	2014-03-07 22:49:38.421166+01	2	21	5	The Centre	2	Changed content.
273	2014-03-07 22:50:59.906429+01	2	21	5	The Centre	2	Changed content.
274	2014-03-07 22:52:03.806663+01	2	21	5	The Centre	2	Changed content.
275	2014-03-07 22:53:20.2843+01	2	21	5	The Centre	2	Changed content.
276	2014-03-07 22:54:34.299796+01	2	21	5	The Centre	2	Changed content and description.
277	2014-03-07 22:58:03.183556+01	2	21	5	The Centre	2	Changed content and description.
278	2014-03-07 22:58:57.830426+01	2	21	5	The Centre	2	Changed content and description.
279	2014-03-07 23:00:02.787781+01	2	21	5	The Centre	2	Changed content and description.
280	2014-03-07 23:02:05.417904+01	2	21	5	The Centre	2	Changed content and description.
281	2014-03-07 23:03:34.020143+01	2	21	5	The Centre	2	Changed content and description.
282	2014-03-07 23:07:53.488411+01	2	21	5	The Centre	2	Changed content and description.
283	2014-03-08 08:15:55.834589+01	1	21	5	The Centre	2	Changed content and description.
284	2014-03-08 08:16:54.190199+01	1	21	5	The Centre	2	Changed content.
285	2014-03-08 08:17:12.412087+01	1	21	5	The Centre	2	Changed content.
286	2014-03-08 08:17:46.551617+01	1	21	7	The Centre / Management	2	Changed content.
287	2014-03-08 08:18:48.452877+01	1	21	5	The Centre	2	Changed content.
288	2014-03-08 08:19:24.917568+01	1	21	5	The Centre	2	Changed content.
289	2014-03-08 08:20:17.885693+01	1	21	5	The Centre	2	Changed content.
290	2014-03-09 13:50:56.669771+01	1	14	4	Friday May 2, 2014 18:00-19:30h: Vernissage of the paintings from Symany	2	Changed content.
291	2014-03-09 13:54:35.76811+01	1	14	4	Friday May 2, 2014 18:00-19:30h: Vernissage of the paintings from Symany	2	Changed content.
292	2014-03-09 13:55:11.420884+01	1	14	4	Friday May 2, 2014 18:00-19:30h: Vernissage of the paintings from Symany	2	Changed content.
293	2014-04-03 17:57:42.550585+02	2	14	4	Friday May 2, 2014 18:00-19:30h: Vernissage of the paintings from Enid Maurer	2	Changed title, publish_date, content, _meta_title, slug and description.
294	2014-04-06 21:34:03.107605+02	2	14	4	Friday May 2, 2014 18:00-20:00h: Vernissage of the paintings from Enid Maurer	2	Changed title, content and slug.
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 294, true);


--
-- Data for Name: django_comment_flags; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY django_comment_flags (id, user_id, comment_id, flag, flag_date) FROM stdin;
\.


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('django_comment_flags_id_seq', 1, false);


--
-- Data for Name: django_comments; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY django_comments (id, content_type_id, object_pk, site_id, user_id, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed) FROM stdin;
\.


--
-- Name: django_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('django_comments_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	redirect	redirects	redirect
6	session	sessions	session
7	site	sites	site
8	Setting	conf	setting
9	Site permission	core	sitepermission
10	Comment	generic	threadedcomment
11	Keyword	generic	keyword
12	assigned keyword	generic	assignedkeyword
13	Rating	generic	rating
14	Blog post	blog	blogpost
15	Blog Category	blog	blogcategory
16	Form	forms	form
17	Field	forms	field
18	Form entry	forms	formentry
19	Form field entry	forms	fieldentry
20	Page	pages	page
21	Rich text page	pages	richtextpage
22	Link	pages	link
23	Gallery	galleries	gallery
24	Image	galleries	galleryimage
25	Twitter query	twitter	query
26	Tweet	twitter	tweet
27	Slide	mezzanine_slides	slide
28	migration history	south	migrationhistory
29	log entry	admin	logentry
30	comment	comments	comment
31	comment flag	comments	commentflag
32	home page slide	regress_theme	homepageslide
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('django_content_type_id_seq', 32, true);


--
-- Data for Name: django_redirect; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY django_redirect (id, site_id, old_path, new_path) FROM stdin;
\.


--
-- Name: django_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('django_redirect_id_seq', 1, false);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
ib510b80ujizuv8myifemr9voxwgk4ul	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-31 21:33:27.655815+01
esa0cbjob0pr98yrkk4lqjzgzb1rrqre	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-21 22:40:36.487689+01
cb2nxrg4as559ezkbfgrsuowhezmbpxh	MTIxODAxYWJlZjdjMjJlODAxZDllYmY0NjNmYTIxODA1NWNiMDViYTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-12-21 22:55:51.27408+01
xbbbae72xtvlcq1rrxmkkc36bn1351iy	ZTcwNThmZmUxZDE5MjdlNGY0N2RiNzQzYzU5Mzc4NGY0ZGViZTVmNTqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2013-12-21 22:56:17.067546+01
my09uptf7ijntrdq73w27hn3pav52pnv	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-31 21:46:10.087266+01
s5wbte67zna59z3ju49fi4te1kqe5tc0	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-22 20:19:58.0973+01
bk8hpzn5ovapodyae5b3eoi8s6vv5oeq	ZTcwNThmZmUxZDE5MjdlNGY0N2RiNzQzYzU5Mzc4NGY0ZGViZTVmNTqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2014-01-13 23:29:37.94358+01
msir1fhw279ve63c1ugq04y8dcgxsh1q	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-31 22:03:15.538735+01
dusig2tcu5n9e6tmfptgg02bmaxyrm08	NThjNmVmNjQ1NzgyYWEzMjJlNjczNTAxMmYwYzdkNzcyODc4ZDcxNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2013-12-16 16:20:17.167672+01
dzz86bkt5burq0586v0fpug6ix9ux2hl	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-31 22:10:33.041506+01
g9zaotal88cegz8o4hr2k0z6khdqfsxi	MTIxODAxYWJlZjdjMjJlODAxZDllYmY0NjNmYTIxODA1NWNiMDViYTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-12-31 22:20:58.353626+01
nt443o8lclutylcwha5dw91qfq6v6ov1	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-01 20:51:50.411588+01
swr6xgcr45ucrv9kyry5g1o91zitzu9i	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2013-12-17 21:46:02.484594+01
vdkga327s8praizmsbcpudn5rvju17ij	NThjNmVmNjQ1NzgyYWEzMjJlNjczNTAxMmYwYzdkNzcyODc4ZDcxNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2013-12-22 20:58:54.805994+01
slv74xhxikwx0ek7g2qhlxghebf1t8r1	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-02 08:59:28.031766+01
y72e6h3n227pxjk6s8tlw11s6uuber1l	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-02 09:56:14.49002+01
iug0wgeze8ncaqgc5xxwg9ocqu6vye2o	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-02 11:23:56.241873+01
yakgro72rrecdy1cdgzligczuwhgl1sz	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2013-12-25 10:25:52.799598+01
t7aimbktkhxi4e2hdeti7ly68pkyfohb	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-02 11:36:47.536435+01
542ny9z2dygds15b0fkw11hg6h4jh00e	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-02 11:41:38.394656+01
feeu6r1e1e6s95yotv9bjqc2iro7amvz	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-02 15:49:30.676431+01
wiyqjheatq4lff9b7z74m0gntco3azlv	NThjNmVmNjQ1NzgyYWEzMjJlNjczNTAxMmYwYzdkNzcyODc4ZDcxNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-01-04 10:08:49.538583+01
x4orsec025xkskaopi3hrvphyv0g7db3	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2013-12-25 10:54:22.135955+01
zcrr0kihho1qzvrd6xt3sttju2xofeqs	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-25 17:42:25.715097+01
tpz27f9qzrwhggkhknseq2oc2lzzipws	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-25 18:14:31.837603+01
rwet6xvaniofo5gysp7wudlq9yuymt38	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-25 18:19:17.769132+01
47fxmg5tjcmcvw2sbp94jcybqtnor9v5	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-01-04 13:01:06.478201+01
cksef5n6uipg1qsr1asrta4i3sspdj6p	MTIxODAxYWJlZjdjMjJlODAxZDllYmY0NjNmYTIxODA1NWNiMDViYTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-01-09 12:37:11.542397+01
lokmcv3gifbwvkmi2psjkkvezd339rrm	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-31 20:38:53.234833+01
tvox6jjakr9793q5qzszfrgzuqt9s4nr	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2013-12-31 20:46:34.43282+01
3lyeqlcd9037z0s2ivjya4lolwdp1aqp	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-09 12:38:13.817244+01
cde2pkwsgz9eb1kfaqkv05xtc55v1wu3	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-10 15:13:39.745039+01
2aap7lbon8yw8rx5knb1vojmdqs9l2gg	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-01-10 17:24:05.096012+01
h2osicu626jnzdxrfdkkvqoni58zi0ti	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-10 17:02:01.09127+01
f6206d0c77i43chq59l5dgwpx57musux	ZTcwNThmZmUxZDE5MjdlNGY0N2RiNzQzYzU5Mzc4NGY0ZGViZTVmNTqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2014-01-10 23:20:17.735671+01
gowxggcric623wr8z8hlf0w6ijdpr780	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-01-15 16:43:16.025814+01
56kuf308hyg2dh8vtvviesdtm031bvcg	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-02-23 22:38:10.744057+01
xbe8m9nk74w9sm0nz3y24bb9ekzqzga7	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-08 19:09:37.649606+01
39f0am3nq1qy016rw4bi874uh7bbveix	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-15 21:28:28.362268+01
okuewu0uhcteob2j2pikgnotrzd9xpy3	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-12 14:55:57.923116+01
a2amb1rnktshsp0ak8bq6v62eo5lsjg3	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-02-23 22:41:39.935087+01
n5hw2xabn6o52iimua9q6tll73jonpao	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-01-16 08:37:45.746947+01
un4o679oso0f9w0hd63i6ervrzy6urjr	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-01-19 20:30:09.991184+01
vx0oinq86233tlouwf7ihgt3aenegqtw	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-02-23 22:49:23.461128+01
zo03e94cgkg1faoedfp2wv82z4daigql	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-12 18:36:33.383938+01
lb4nxwxx6bjktuy9ldrq0bir160r8atj	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-02-17 22:10:17.861519+01
nkas0y5elonegluxxaq8u5qn2tsbipa8	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-10 17:56:57.201568+01
uwz4j5nyvw65kj7jkq9nfty9b6k6ejcq	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-14 20:56:45.790689+01
8diax867j1c97mxh00f564i5dm1dlrh5	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-17 11:06:48.51783+01
iatrhxsox2bazhatk2mwtt5val0rwj2p	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-14 21:37:48.892485+01
k25dtiumaah3yyptc12fkrp7uqxpx7c4	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-02 16:46:59.554084+01
bqxv4c5uxyvudy1fgtfw9syhpdlulgwd	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-08 20:22:45.95059+01
yrg7r4z9vinnu79j3seiz8691onyqypm	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-02 20:57:46.783335+01
qqvk5k1gthukjpga713nafmdhd4pva89	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-15 16:14:21.011421+01
ptqk3lnqafxe07wzutobo1hyb9xxjemq	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-21 21:34:20.976956+01
odwmxb2i8j06jqs7zzaf65ldubqcxtik	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-02 21:25:08.898726+01
0h8pb2ys5mpmppp8mps9jsnfjz7k0pws	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-02-23 21:54:41.357187+01
55j32ybhwxupanvqen5j0jr4s2qiyo4q	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-09 19:39:24.812396+01
sn6uhakejq5712hg6v47sdc59p26tgcj	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-02-23 22:25:33.459767+01
k7fnefisls29luwvq7pukp2h6xom9eqi	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-21 22:13:47.552999+01
8d8q4cl0hbx0svbhsy4vnjlc21hw3m0m	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-10 10:37:54.450473+01
79wq5fhoj6lcz12mtaky6ukp0q87ypcs	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-10 11:16:00.173755+01
rmm0cstkowqlt9re0v5c269in6f9pvsy	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-21 22:56:16.802016+01
oww58bnv1j8qtqxhsklenqzqg633kapp	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-22 08:13:17.687454+01
8zlehkz9ccw2vp9j5r2apd6viiq8dfr1	MTIxODAxYWJlZjdjMjJlODAxZDllYmY0NjNmYTIxODA1NWNiMDViYTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-10 12:49:56.951374+01
xq8w4khillnipdm809h46282oueoaeh6	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-22 10:55:44.276+01
kkfetlo65wp1jrz1txz320snd74gt619	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-10 15:53:32.926345+01
xqajbym5os7wlufcml289vm67nem63ic	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-22 16:20:53.248877+01
v9pdyc1co31zhknt51o6p3fp8clvnjvv	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-23 13:55:28.297322+01
viombl1gk9wc95m1m0w85afzpej5af5x	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-17 11:05:37.462275+01
m34eg1hi42er55jqy3k0ceu8alssoo32	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-01-11 14:52:53.283182+01
kdtl8v815gdufinnrn8erqa3v9j45dnx	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-15 17:51:22.17381+01
c2kxfxblth5rhxtf9g94rd83g7ao5nvg	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-01-11 15:17:45.238442+01
rone6efya16wlqbbow617kxhcmhm277j	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-12 15:00:13.934346+01
97qryktdiw87box06gur9y45t2h1m8l3	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-12 18:35:31.873341+01
9kayejino15j7873bpu5z4pfp4z9u2un	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-08 19:58:03.735345+01
3mmszyni1n0kfaxcve13zotyvpppi853	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-02 16:39:21.722498+01
xg4ijz53yrb2xaxn1suo91a2zkhe03if	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-14 19:40:20.143013+01
7qxxrfvqpo3pmzckkkw3ylz8ejnsqlml	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-08 21:32:46.207714+01
ew2awy1l3uiid43ef0p8jm11atv9nucd	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-14 21:32:30.238977+01
kddwn49n8nzjugrd7e87w6nd28596w80	NThjNmVmNjQ1NzgyYWEzMjJlNjczNTAxMmYwYzdkNzcyODc4ZDcxNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-02 20:26:53.596465+01
spuyc6smit8kppkfn09rr7i3yqrsoyqo	NThjNmVmNjQ1NzgyYWEzMjJlNjczNTAxMmYwYzdkNzcyODc4ZDcxNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-21 15:28:29.85536+01
5k7avpnt2c8wzc82q83imbr83lmzb7ms	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-14 23:43:09.88586+01
frrx6qqm9gm31kqro7pfe8jgeoscgiz5	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-02-23 21:43:27.877768+01
xpctoyfukgh4h138hzct9f4i1r790x8f	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-02 21:07:48.827888+01
qgaq82txm68twbchnw2ok0kj7iu5c73q	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-15 11:21:05.333457+01
6h7j0s9vl2ols6w6hf62p493pfe0v4yu	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-02-23 22:15:07.101311+01
wcs1g8odzk38n195dqei3yc337qqgx1w	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-21 22:12:09.10681+01
8s1xhzlkx2188qojojxtfhs6ap3zhglp	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-02 22:51:22.571929+01
ctp6ei73585k1lwml5bxsk7qq8nq27yo	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-08 22:55:48.736317+01
qfg9iq1a8aywds3cvd2vfraz2m6vgko4	NThjNmVmNjQ1NzgyYWEzMjJlNjczNTAxMmYwYzdkNzcyODc4ZDcxNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-08 13:22:13.133835+01
ffwn4hhd9liyi1m5mjqrkkizl24xnt4o	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-10 09:25:40.866898+01
cwc5tt9bl3l4ijdxoskykax1se91il68	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-21 22:54:05.474064+01
bkr24i9t3hyi0swv3qbaqay6dxwh44l1	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-10 10:53:32.510844+01
0wb9j9ah950qal954dpjemktmbx9te8x	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-22 12:43:01.853849+01
nplw7gtlvsoqhfttqd1j1051v73jnahg	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-22 13:29:17.883155+01
jgec070n3wc76rah0l5bj38bafwnym18	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-22 16:22:17.487879+01
13bzkjjchcdht4njnt0mb5o77567iye3	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-23 11:29:30.249091+01
atzpgzq6b4occenh5y51u1s9jiwvdc4o	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-23 16:04:07.644754+01
vuco6wkpp5mippbt11j5qz1qiy8sbgur	MTIxODAxYWJlZjdjMjJlODAxZDllYmY0NjNmYTIxODA1NWNiMDViYTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-25 00:07:25.408286+01
r62lkccgkw6r32qpgdjet0x1m73ww29e	ZTYwNThlYmM4MjY1MmQ0NDU5M2Q2NDEyNWFiYWVjZTBhYWJhMzZlOTqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWKkDAABGaWxhIG9uIHRoZSBvdGhlciBoYW5kIGJvYXN0cyBvZiBhbiBJdGFsaWFuIGxpbmVhZ2UgdGhhdCBnaXZlcyBpdCB0aGUgc3R1cmRpbmVzcyB0aGF0IHRoZSBJdGFsaWFucyBhcmUgc28gd2VsbCBrbm93biBmb3IuIEluIGNvbnRyYXN0IHdpdGggUHVtYSwgRmlsYSBiZWdhbiBpdHMgam91cm5leSBpbiB0aGUgYXBwYXJlbCBpbmR1c3RyeSBpbiBhIHNtYWxsIHRvd24gaW4gSXRhbHkuIFN0YXJ0ZWQgYXMgYSBmYW1pbHkgYnVzaW5lc3MgYnkgdHdvIGJyb3RoZXJzLCB0aGUgYnJhbmQgc29vbiBncmV3IGJleW9uZCBib3VuZHMsIGdyYWNpbmcgbWFueSB3b3JsZCBzcG9ydHMgZXZlbnRzLiBXaXRoIGl0cyBrbml0d2VhciwgRmlsYSBvZmZlcmVkIGNvbWZvcnQgdGhhdCB0ZW1wdGVkIGF0aGxldGVzIHRvIHRyeSBpdHMgYXBwYXJlbCBvbiAtIG9uY2UgdGhleSBkaWQsIHRoZXkgbmV2ZXIgbG9va2VkIGFueXdoZXJlIGVsc2UuIEZpbGEgZW1ib2RpZWQgc29waGlzdGljYXRpb24gYW5kIGNsYXNzLCBmaXJtbHkgYmVsaWV2aW5nIHRoYXQgZXhjZWxsaW5nIGluIHNwb3J0cyBjb21lcyBub3Qgb25seSBmcm9tIHN1cGVyaW9yIGdlYXIsIGJ1dCBhbHNvIGEgcGFzc2lvbiBmb3IgdGhlIGdhbWUuIEl0YWxpYW4gY3JhZnRzbWFuc2hpcCBtYWtlcyBnZWFyIGZyb20gRmlsYSBhbGwgdGhlIG1vcmUgYXBwZWFsaW5nIHRvIHRoZSBhdGhsZXRlIGFzIHRoZXkgb2ZmZXIgYSBzdHlsZSB0aGF0IGlzIG9uIHBhciB3aXRoIHRoZSBjb21mb3J0IHRoYXQgaXMgZXhwZWN0ZWQgb2YgdGhlbS4NClt1cmw9aHR0cDovL3d3dy5ldmVyeW9uZXNvY2lhbGlzaW5nLmNvbS9tZW1iZXIvYmxvZ19wb3N0X3ZpZXcucGhwP3Bvc3RJZD02NDI0OF1odHRwOi8vd3d3LmV2ZXJ5b25lc29jaWFsaXNpbmcuY29tL21lbWJlci9ibG9nX3Bvc3Rfdmlldy5waHA/cG9zdElkPTY0MjQ4Wy91cmxdcQVYBAAAAG5hbWVxBlhJAAAAaHR0cDovL3d3dy5ldmVyeW9uZXNvY2lhbGlzaW5nLmNvbS9tZW1iZXIvYmxvZ19wb3N0X3ZpZXcucGhwP3Bvc3RJZD02NDI0OHEHWAMAAAB1cmxxCFhJAAAAaHR0cDovL3d3dy5ldmVyeW9uZXNvY2lhbGlzaW5nLmNvbS9tZW1iZXIvYmxvZ19wb3N0X3ZpZXcucGhwP3Bvc3RJZD02NDI0OHEJWAgAAAByZWZlcnJlcnEKWAAAAABYCQAAAG9iamVjdF9wa3ELWAEAAAA2WA0AAABzZWN1cml0eV9oYXNocQxYKAAAAGE4NTUzNmIyOTFkNTQyMTdjZWVkYTU1MTI3MjM0YTEwOWJkYmMwYmVxDVgMAAAAY29udGVudF90eXBlcQ5YDQAAAGJsb2cuYmxvZ3Bvc3RxD1gJAAAAdGltZXN0YW1wcRBYCgAAADEzOTQ1Nzc0NjZxEVgIAAAAaG9uZXlwb3RxElhJAAAAaHR0cDovL3d3dy5ldmVyeW9uZXNvY2lhbGlzaW5nLmNvbS9tZW1iZXIvYmxvZ19wb3N0X3ZpZXcucGhwP3Bvc3RJZD02NDI0OHETWBMAAABjc3JmbWlkZGxld2FyZXRva2VucRRYIAAAAElpR0JqQ3FHS0ZXV3dURXJGdklWWG9kWDV0Y2dUQnpvcRVYBQAAAGVtYWlscRZYEwAAAG9vaHdpbnhAaG90bWFpbC5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA2YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-03-25 23:37:53.376082+01
h9hjjr3sge9vyfbo6b64vzmufhubl9iq	MTIxODAxYWJlZjdjMjJlODAxZDllYmY0NjNmYTIxODA1NWNiMDViYTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-27 09:26:21.309207+01
wdegyvj122uxje0pe05n6bpj61g37s1j	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-04-17 17:57:48.871407+02
8tltkh7v88f3chw6ox3ag5u8nys3d1ku	ZTZkMGFhY2EzZmY3MWVkNTZkODYzNjgzMWIwMjBlZjQzYWViNDdkMzqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWCoFAABIZWxsbyBXZWIgQWRtaW4sIEkgbm90aWNlZCB0aGF0IHlvdXIgT24tUGFnZSBTRU8gaXMgaXMgbWlzc2luZyBhIGZldyBmYWN0b3JzLCBmb3Igb25lIHlvdSBkbyBub3QgdXNlIGFsbCB0aHJlZSBIIHRhZ3MgaW4geW91ciBwb3N0LCBhbHNvIEkgbm90aWNlIHRoYXQgeW91IGFyZSBub3QgdXNpbmcgYm9sZCBvciBpdGFsaWNzIHByb3Blcmx5IGluIHlvdXIgU0VPIG9wdGltaXphdGlvbi4gT24tUGFnZSBTRU8gbWVhbnMgbW9yZSBub3cgdGhhbiBldmVyIHNpbmNlIHRoZSBuZXcgR29vZ2xlIHVwZGF0ZTogUGFuZGEuIE5vIGxvbmdlciBhcmUgYmFja2xpbmtzIGFuZCBzaW1wbHkgcGluZ2luZyBvciBzZW5kaW5nIG91dCBhIFJTUyBmZWVkIHRoZSBrZXkgdG8gZ2V0dGluZyBHb29nbGUgUGFnZVJhbmsgb3IgQWxleGEgUmFua2luZ3MsIFlvdSBub3cgTkVFRCBPbi1QYWdlIFNFTy4gU28gd2hhdCBpcyBnb29kIE9uLVBhZ2UgU0VPP0ZpcnN0IHlvdXIga2V5d29yZCBtdXN0IGFwcGVhciBpbiB0aGUgdGl0bGUuVGhlbiBpdCBtdXN0IGFwcGVhciBpbiB0aGUgVVJMLllvdSBoYXZlIHRvIG9wdGltaXplIHlvdXIga2V5d29yZCBhbmQgbWFrZSBzdXJlIHRoYXQgaXQgaGFzIGEgbmljZSBrZXl3b3JkIGRlbnNpdHkgb2YgMy01JSBpbiB5b3VyIGFydGljbGUgd2l0aCByZWxldmFudCBMU0kgKExhdGVudCBTZW1hbnRpYyBJbmRleGluZykuIFRoZW4geW91IHNob3VsZCBzcHJlYWQgYWxsIEgxLEgyLEgzIHRhZ3MgaW4geW91ciBhcnRpY2xlLllvdXIgS2V5d29yZCBzaG91bGQgYXBwZWFyIGluIHlvdXIgZmlyc3QgcGFyYWdyYXBoIGFuZCBpbiB0aGUgbGFzdCBzZW50ZW5jZSBvZiB0aGUgcGFnZS4gWW91IHNob3VsZCBoYXZlIHJlbGV2YW50IHVzYWdlIG9mIEJvbGQgYW5kIGl0YWxpY3Mgb2YgeW91ciBrZXl3b3JkLlRoZXJlIHNob3VsZCBiZSBvbmUgaW50ZXJuYWwgbGluayB0byBhIHBhZ2Ugb24geW91ciBibG9nIGFuZCB5b3Ugc2hvdWxkIGhhdmUgb25lIGltYWdlIHdpdGggYW4gYWx0IHRhZyB0aGF0IGhhcyB5b3VyIGtleXdvcmQuLi4ud2FpdCB0aGVyZSdzIGV2ZW4gbW9yZSBOb3cgd2hhdCBpZiBpIHRvbGQgeW91IHRoZXJlIHdhcyBhIHNpbXBsZSBXb3JkcHJlc3MgcGx1Z2luIHRoYXQgZG9lcyBhbGwgdGhlIE9uLVBhZ2UgU0VPLCBhbmQgYXV0b21hdGljYWxseSBmb3IgeW91PyBUaGF0J3MgcmlnaHQgQVVUT01BVElDQUxMWSwganVzdCB3YXRjaCB0aGlzIDRtaW51dGUgdmlkZW8gZm9yIG1vcmUgaW5mb3JtYXRpb24gYXQuIDxhIGhyZWY9Imh0dHA6Ly93d3cuU2VvT3B0aW1pemF0aW9uR3VpZGUuY29tIj5TZW8gUGx1Z2luPC9hPnEFWAQAAABuYW1lcQZYCgAAAHNlbyBwbHVnaW5xB1gDAAAAdXJscQhYJAAAAGh0dHA6Ly93d3cuU2VvT3B0aW1pemF0aW9uR3VpZGUuY29tL3EJWAgAAAByZWZlcnJlcnEKWAAAAABYCQAAAG9iamVjdF9wa3ELWAEAAAA1WA0AAABzZWN1cml0eV9oYXNocQxYKAAAADYzYTJlZGMzMjk0MDA2NmY0MGZmM2ZkNDNhZjA5ZmE3ODY5MzVlZmZxDVgMAAAAY29udGVudF90eXBlcQ5YDQAAAGJsb2cuYmxvZ3Bvc3RxD1gJAAAAdGltZXN0YW1wcRBYCgAAADEzOTkyNTQ2MDBxEVgIAAAAaG9uZXlwb3RxElgKAAAAc2VvIHBsdWdpbnETWBMAAABjc3JmbWlkZGxld2FyZXRva2VucRRYIAAAAGJmNHFQNEI0a0lsNkV6NWpwZEFQR1VLV01DT1l2amtWcRVYBQAAAGVtYWlscRZYFQAAAGNmdHViZmhyaGN4QGdtYWlsLmNvbXEXdX1xGChVCV9lbmNvZGluZ3EZVQV1dGYtOHEaVQVfZGF0YXEbfXEcKGgEXXEdaAVhaAZdcR5oB2FoCF1xH2gJYWgKXXEgWAAAAABhaAtdcSFYAQAAADVhaBZdcSJoF2FoDF1xI2gNYWgOXXEkaA9haBBdcSVoEWFoEl1xJmgTYWgUXXEnaBVhdVUIX211dGFibGVxKIl1YnMu	2014-05-19 03:50:02.10134+02
lzmf65t5vfugo7bfq8nscim8ozem5gij	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-10 17:46:11.112529+01
hdketqrfs64zussxwcyn4igrhuhmilv6	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-10 23:27:36.342077+01
dxad52fkcrb5aiupnhi6hy09p10u50x4	MTIxODAxYWJlZjdjMjJlODAxZDllYmY0NjNmYTIxODA1NWNiMDViYTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-01-11 15:07:55.39295+01
kyrx88cy7490uq156kv1ci7fjmbjh0jm	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-10 18:04:58.142017+01
ahrrdpjc4bwyoy4azjwbvogeg6pp69nl	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-15 17:25:58.227914+01
ob131tnuewugelhznxaifd2eiggjrfkr	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-10 18:27:55.743956+01
grutn5eui9gbikp29j5g0gr6ns7xmtsr	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-17 11:19:15.47216+01
gmq19nohxc9dt6egs7hcb6oovicrqh1m	MTIxODAxYWJlZjdjMjJlODAxZDllYmY0NjNmYTIxODA1NWNiMDViYTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-01-12 18:34:09.866594+01
qmsbn62g2jaa152l8cwvn56b8kt09dxo	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-10 19:03:30.686756+01
m8ty81n8536uk0vvhhnuzbfwxd130e5k	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-19 12:45:44.43799+01
exvjv52m9rtp2dyq1frvnz3i8k1oofeu	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-10 21:26:20.578998+01
77x4gslzstat84jyzmeymhepc1guqk03	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-13 11:45:47.817363+01
g67ltyu41j4q1r9ln1r4m75vseif1436	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-02-24 07:48:41.069119+01
zdowg99rpkkr6imgtkag4ommzl9gztnr	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-01-13 16:15:29.714486+01
43a3fgdn5izdpb9yn6mlrimk34vh9ln8	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-01-10 21:47:03.159467+01
2gmz2ga0bqzxy5c5t43begsjtqgoxq4i	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-02 15:23:17.162405+01
b0zikbog4c3in13d3hm3ok699jm41hzm	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-14 21:25:45.653822+01
gdps99dn7lxudjzjcg2z6iu3v2gwvlnn	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-08 21:21:22.44165+01
xcc9lhomg1dtv52lnsmlm3bjxg0uw5y9	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-02-17 22:16:53.144337+01
p1sht3zs1c5iqn2rse2k1r3on0mo1c19	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-14 23:07:31.970327+01
ou5kphrvbuywy5ss9nkrxjlkeritu5l5	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-02 15:59:20.616854+01
iwp0baxveo9wqxqqcxr8iqllgnxwqa5g	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-19 20:47:26.452104+01
hu7tt8s3n7u917rq3owhife8bzq779se	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-02 19:03:18.195023+01
w2zxt9vgnf4upbsrmyclhgmplolu5x8i	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-01-15 16:20:38.95541+01
dhmsxjpq77z3wfry604acswagbujq3pn	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-03-08 22:54:27.531792+01
c5y4wqsd5vaa5jcpx9kamczzcpf8gf6x	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-02 21:04:06.812615+01
si1nf9f3iwwyvpvmhb1da5zy1qabo8on	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-21 22:02:07.028981+01
rmte8npa555ypgqbn4qas3g8z7cxvsip	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-02 22:20:39.658517+01
vkbjyhfzab5pbglfgpsoyugc8wj1iuf0	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-10 09:09:08.242259+01
jdosr76k1ct6gtrcgob3wij9vmz4wbp2	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-21 22:21:53.818761+01
igcer2wap2nf8tcehi8cqcpmvlwmjol5	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-10 10:48:15.601047+01
i5lextxj19jgvvv22ppjkvc3npedvtzv	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-02-23 14:49:10.739599+01
f9x53azp477p1ooscfhd586xdjpexqy7	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-02-23 22:09:04.534144+01
vs6rqzo7rnpma4l5oy45a85cq8ulmupi	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-03-22 11:20:05.35125+01
ts76u8tapl1i20nugkvuie0bd0bbda50	NDRjM2NiNTkyN2I5ODFmODQ4Y2UxY2Q2ODY5M2VjNjlhMTgwNjRkOTqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWJkBAABFY2NvIGFsc28gbWFrZXMgYSB3YWxraW5nIHNob2UgdGhhdCBjbG9zZWx5IHJlc2VtYmxlcyB0aGUgc3BvcnRzIHNob2UsIGJ1dCBtYWRlIG9mIHNtb290aCBsZWF0aGVyIHRoYXQgd3JhcHMgdGhlIGZvb3QuIFRoaXMgbW9kZWwgYWxzbyBjb21lcyBpbiB3aGl0ZSB3aXRoIG5hdnkgbGVhdGhlciB0cmltLg0KW3VybD1odHRwOi8vc3BvdGl0dG8uY29tL2JldGEvaW5kZXgucGhwP2RvPS9ibG9nLzY2NzkzL2hvdy10by1zZWxlY3QtYS1yaWdodC1wYWlyLW9mLW5pa2Utc2hveC1jbGVhcmFuY2UtZm9yLWxhZGllcy9daHR0cDovL3Nwb3RpdHRvLmNvbS9iZXRhL2luZGV4LnBocD9kbz0vYmxvZy82Njc5My9ob3ctdG8tc2VsZWN0LWEtcmlnaHQtcGFpci1vZi1uaWtlLXNob3gtY2xlYXJhbmNlLWZvci1sYWRpZXMvWy91cmxdcQVYBAAAAG5hbWVxBlhvAAAAaHR0cDovL3Nwb3RpdHRvLmNvbS9iZXRhL2luZGV4LnBocD9kbz0vYmxvZy82Njc5My9ob3ctdG8tc2VsZWN0LWEtcmlnaHQtcGFpci1vZi1uaWtlLXNob3gtY2xlYXJhbmNlLWZvci1sYWRpZXMvcQdYAwAAAHVybHEIWG8AAABodHRwOi8vc3BvdGl0dG8uY29tL2JldGEvaW5kZXgucGhwP2RvPS9ibG9nLzY2NzkzL2hvdy10by1zZWxlY3QtYS1yaWdodC1wYWlyLW9mLW5pa2Utc2hveC1jbGVhcmFuY2UtZm9yLWxhZGllcy9xCVgIAAAAcmVmZXJyZXJxClgAAAAAWAkAAABvYmplY3RfcGtxC1gBAAAANlgNAAAAc2VjdXJpdHlfaGFzaHEMWCgAAABhZDRjNjliYjJiZGYzMDgzMWFiODAzMDJhNTdiMGM5NDE3M2NmMzYycQ1YDAAAAGNvbnRlbnRfdHlwZXEOWA0AAABibG9nLmJsb2dwb3N0cQ9YCQAAAHRpbWVzdGFtcHEQWAoAAAAxMzk0NDI5ODM5cRFYCAAAAGhvbmV5cG90cRJYbwAAAGh0dHA6Ly9zcG90aXR0by5jb20vYmV0YS9pbmRleC5waHA/ZG89L2Jsb2cvNjY3OTMvaG93LXRvLXNlbGVjdC1hLXJpZ2h0LXBhaXItb2YtbmlrZS1zaG94LWNsZWFyYW5jZS1mb3ItbGFkaWVzL3ETWBMAAABjc3JmbWlkZGxld2FyZXRva2VucRRYIAAAADg1NGhqWFg5d2pWVmJHc0V0RGxrMDd5NVBZNUNQRWpacRVYBQAAAGVtYWlscRZYFwAAAGFoempsbWlocGx3QGhvdG1haWwuY29tcRd1fXEYKFUJX2VuY29kaW5ncRlVBXV0Zi04cRpVBV9kYXRhcRt9cRwoaARdcR1oBWFoBl1xHmgHYWgIXXEfaAlhaApdcSBYAAAAAGFoC11xIVgBAAAANmFoFl1xImgXYWgMXXEjaA1haA5dcSRoD2FoEF1xJWgRYWgSXXEmaBNhaBRdcSdoFWF1VQhfbXV0YWJsZXEoiXVicy4=	2014-03-24 06:37:25.667501+01
t1ewxeh1zunz1o1srw3btd89bzstrzgp	NTc2MjY5MzEwMzI1Y2Q0MDNjNzBkY2M0ZDVlODdmYzc0Nzc4NjVmMjqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWMMBAABJbiB0aGUgZ2FtZSwgdGhlIFNlYWhhd2tzJyBwcmVwYXJhdGlvbnMgc2VydmVkIHRoZW0gd2VsbC4gUG9sYW1hbHUgd2FzIG5vdCBtdWNoIG9mIGEgZmFjdG9yLCBhbmQgdGhlIFNlYWhhd2tzJyBvbmx5IHRvdWNoZG93biBjYW1lIG9uIGEgcGxheSBpbiB3aGljaCB0aGV5IHRvb2sgYWR2YW50YWdlIG9mIGhpbS4gUG9sYW1hbHUgd2FzIHJlc3BvbnNpYmxlIGZvciBTZWFoYXdrcyB0aWdodCBlbmQgSmVycmFteSBTdGV2ZW5zLCBhbmQgdGhlIFNlYWhhd2tzIGZyZWVkIFN0ZXZlbnMgYnkgaGF2aW5nIGFub3RoZXIgcmVjZWl2ZXIgcnVuIGJldHdlZW4gaGltIGFuZCBQb2xhbWFsdS4gVGhlIHJlc3VsdCB3YXMgYSAxNi15YXJkIHRvdWNoZG93biBwYXNzLg0KW3VybD1odHRwOi8vY3Jlc3RhbGlhLm5ldC9taW5lY3JhZnQvYmxvZ3MvcG9zdC8zNzM5MDBdTmlrZSBqb3JkYW4gb3V0bGV0Wy91cmxdcQVYBAAAAG5hbWVxBlgSAAAATmlrZSBqb3JkYW4gb3V0bGV0cQdYAwAAAHVybHEIWDAAAABodHRwOi8vY3Jlc3RhbGlhLm5ldC9taW5lY3JhZnQvYmxvZ3MvcG9zdC8zNzM5MDBxCVgIAAAAcmVmZXJyZXJxClgAAAAAWAkAAABvYmplY3RfcGtxC1gBAAAANlgNAAAAc2VjdXJpdHlfaGFzaHEMWCgAAAA5OWI2MjQ2NTg2ZDAwOTY4ZTgxYWIzOWQyNTllNGU5YmFkYmNhNzZlcQ1YDAAAAGNvbnRlbnRfdHlwZXEOWA0AAABibG9nLmJsb2dwb3N0cQ9YCQAAAHRpbWVzdGFtcHEQWAoAAAAxMzk0NTYyNTIycRFYCAAAAGhvbmV5cG90cRJYEgAAAE5pa2Ugam9yZGFuIG91dGxldHETWBMAAABjc3JmbWlkZGxld2FyZXRva2VucRRYIAAAADBXZDZyY3JackUzSkhBNGxSMDlqREU0ckJPTDVHV3d4cRVYBQAAAGVtYWlscRZYEgAAAHZpanJiekBob3RtYWlsLmNvbXEXdX1xGChVCV9lbmNvZGluZ3EZVQV1dGYtOHEaVQVfZGF0YXEbfXEcKGgEXXEdaAVhaAZdcR5oB2FoCF1xH2gJYWgKXXEgWAAAAABhaAtdcSFYAQAAADZhaBZdcSJoF2FoDF1xI2gNYWgOXXEkaA9haBBdcSVoEWFoEl1xJmgTYWgUXXEnaBVhdVUIX211dGFibGVxKIl1YnMu	2014-03-25 19:28:44.586343+01
sbidt8tcceqclv1joj73p4cgw8wykitk	ZDA3ZDJmNjU2NjQ3ZDg3OTI3ODNmMjJiYTFmZTI5MDVjNTVmNmI0MDqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWAkBAABOb3J0aCBDYXJvbGluYSBsZWQgMTMtMCBhbmQgMjAtNyBpbiB0aGUgZmlyc3QgaGFsZi4gQnJ5biBSZW5uZXIgdGhyZXcgdG91Y2hkb3duIHBhc3NlcyBvZiAxOSB5YXJkcyB0byB0aWdodCBlbmQgRXJpYyBFYnJvbiBhbmQgMjQgeWFyZHMgdG8gU2VhbiBUYXBsZXkgYWZ0ZXIgYSA0LXlhcmQgc2NvcmluZyBydW4gYnkgUm9tYXIgTW9ycmlzLg0KW3VybD1odHRwOi8vam9yZGFueGkubWFuaWZvLmNvbS9dUmV0cm8gMTEgR2FtbWEgQmx1ZSBDaGVhcCBTYWxlWy91cmxdcQVYBAAAAG5hbWVxBlgeAAAAUmV0cm8gMTEgR2FtbWEgQmx1ZSBDaGVhcCBTYWxlcQdYAwAAAHVybHEIWBsAAABodHRwOi8vam9yZGFueGkubWFuaWZvLmNvbS9xCVgIAAAAcmVmZXJyZXJxClgAAAAAWAkAAABvYmplY3RfcGtxC1gBAAAANlgNAAAAc2VjdXJpdHlfaGFzaHEMWCgAAABmNDYzNTQ0YmM4ZmU3NDkwNTYwYmZkNGNlMmQ2MGU1MjMzYmE4NzJicQ1YDAAAAGNvbnRlbnRfdHlwZXEOWA0AAABibG9nLmJsb2dwb3N0cQ9YCQAAAHRpbWVzdGFtcHEQWAoAAAAxMzk0NTc3NDYzcRFYCAAAAGhvbmV5cG90cRJYHgAAAFJldHJvIDExIEdhbW1hIEJsdWUgQ2hlYXAgU2FsZXETWBMAAABjc3JmbWlkZGxld2FyZXRva2VucRRYIAAAAERDR0o3QTNIOEFaRWFvNGEzamY5ZkdhVWl3bWpBWEJMcRVYBQAAAGVtYWlscRZYFgAAAGpreG91andtZmpAaG90bWFpbC5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA2YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-03-25 23:37:45.224211+01
z2u346bag2silfub4hla7aeywsy8sgsq	NTIyNTdiZGJjNDk0Y2FiOWQzNWYxNDRjMGJkNDMzMDk2YTVjMDVjODqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWFUAAAB0aGUgZXZlbnQuDQpbdXJsPWh0dHA6Ly95b3V0dS5iZS85dkRsQjBlWlVqc11OaWtlIFNob3ggV29tZW4gQ2xlYXJhbmNlIGZvciBzYWxlWy91cmxdcQVYBAAAAG5hbWVxBlgiAAAATmlrZSBTaG94IFdvbWVuIENsZWFyYW5jZSBmb3Igc2FsZXEHWAMAAAB1cmxxCFgbAAAAaHR0cDovL3lvdXR1LmJlLzl2RGxCMGVaVWpzcQlYCAAAAHJlZmVycmVycQpYAAAAAFgJAAAAb2JqZWN0X3BrcQtYAQAAADZYDQAAAHNlY3VyaXR5X2hhc2hxDFgoAAAAODFjMzcyMjFmMzI3OGIxMzhjMzRmNWVmZDYzYTVkNjg2MGExZTBhM3ENWAwAAABjb250ZW50X3R5cGVxDlgNAAAAYmxvZy5ibG9ncG9zdHEPWAkAAAB0aW1lc3RhbXBxEFgKAAAAMTM5NDY1MDY1OXERWAgAAABob25leXBvdHESWCIAAABOaWtlIFNob3ggV29tZW4gQ2xlYXJhbmNlIGZvciBzYWxlcRNYEwAAAGNzcmZtaWRkbGV3YXJldG9rZW5xFFggAAAAWVgwN0pVbHoyZmJCRjRiWnpUYll3a1MwVjUyNVNXTWlxFVgFAAAAZW1haWxxFlgXAAAAZmZzaWxwa2p1cm1AaG90bWFpbC5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA2YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-03-26 19:57:42.05634+01
mno14nckzh1bngfcdr4ne8woroav72a0	YzQ3OWQzZDczOGZlOGZlZWIzYjA1Mjc5NDhmNDc5M2RlOTExNDIyMDqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWLsAAAA2ZXNkS2QgIDxhIGhyZWY9Imh0dHA6Ly9pbG5nemtjanV4eWQuY29tLyI+aWxuZ3prY2p1eHlkPC9hPiwgW3VybD1odHRwOi8vd3dianJubGRtYmFpLmNvbS9dd3dianJubGRtYmFpWy91cmxdLCBbbGluaz1odHRwOi8vdW1zbmNvcnJnbnZkLmNvbS9ddW1zbmNvcnJnbnZkWy9saW5rXSwgaHR0cDovL25tYnZiZnN6a3Rzby5jb20vcQVYBAAAAG5hbWVxBlgJAAAAZnlja2JvaHJqcQdYAwAAAHVybHEIWBgAAABodHRwOi8vbXN2ZnhmbXdtYnh4LmNvbS9xCVgIAAAAcmVmZXJyZXJxClgAAAAAWAkAAABvYmplY3RfcGtxC1gBAAAANVgNAAAAc2VjdXJpdHlfaGFzaHEMWCgAAABjZDEyY2FlMzZmZWVkMjEzNGRiNWM0Yzc4ZjcxYmNiYWFmN2RhODZlcQ1YDAAAAGNvbnRlbnRfdHlwZXEOWA0AAABibG9nLmJsb2dwb3N0cQ9YCQAAAHRpbWVzdGFtcHEQWAoAAAAxMzk0ODE5OTY3cRFYCAAAAGhvbmV5cG90cRJYEQAAAFZjV0lDU1p5V05Uck9xbHZKcRNYEwAAAGNzcmZtaWRkbGV3YXJldG9rZW5xFFggAAAAR1BQZkxqZUdVNWpubUVHcGxkdDlYMW83b2NUU1QwVHdxFVgFAAAAZW1haWxxFlgRAAAAZHVmcW15QG1ieGZ4dy5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA1YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-03-28 18:59:27.912034+01
zr2rg3tqtxz4k0u36vxfds67713v0mt8	MTIxODAxYWJlZjdjMjJlODAxZDllYmY0NjNmYTIxODA1NWNiMDViYTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-04-11 01:08:08.986396+02
lkv64zle72g1pdg64bs4hb4kj0tjxeyg	NWUyZGNkODZkYzhiNzc2MGYxNjcxOTg4OWNkZWQ0YWVkZjNkMDJhMjqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDfXEEKFUJX2VuY29kaW5ncQVVBXV0Zi04cQZVBV9kYXRhcQd9VQhfbXV0YWJsZXEIiXVicy4=	2014-04-20 07:07:34.473999+02
7sctwhw48r6xz8mczkkchdpqujtpz4fd	NWUzMjBlYjgzMWJkODkwZGEyOTg5Nzk0Zjc1MTQ5ZWNiZDJkMzAyODqAAn1xAS4=	2014-04-20 21:34:11.342744+02
o4b4y67xa1c7gsytyk0khgsopyb5jidp	ZTEwMDZiMzk0NGRmNWQ2MjI4N2M0NWE2MTE4ODU4MDhkMTkwYTJlMDqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWCoFAABIZWxsbyBXZWIgQWRtaW4sIEkgbm90aWNlZCB0aGF0IHlvdXIgT24tUGFnZSBTRU8gaXMgaXMgbWlzc2luZyBhIGZldyBmYWN0b3JzLCBmb3Igb25lIHlvdSBkbyBub3QgdXNlIGFsbCB0aHJlZSBIIHRhZ3MgaW4geW91ciBwb3N0LCBhbHNvIEkgbm90aWNlIHRoYXQgeW91IGFyZSBub3QgdXNpbmcgYm9sZCBvciBpdGFsaWNzIHByb3Blcmx5IGluIHlvdXIgU0VPIG9wdGltaXphdGlvbi4gT24tUGFnZSBTRU8gbWVhbnMgbW9yZSBub3cgdGhhbiBldmVyIHNpbmNlIHRoZSBuZXcgR29vZ2xlIHVwZGF0ZTogUGFuZGEuIE5vIGxvbmdlciBhcmUgYmFja2xpbmtzIGFuZCBzaW1wbHkgcGluZ2luZyBvciBzZW5kaW5nIG91dCBhIFJTUyBmZWVkIHRoZSBrZXkgdG8gZ2V0dGluZyBHb29nbGUgUGFnZVJhbmsgb3IgQWxleGEgUmFua2luZ3MsIFlvdSBub3cgTkVFRCBPbi1QYWdlIFNFTy4gU28gd2hhdCBpcyBnb29kIE9uLVBhZ2UgU0VPP0ZpcnN0IHlvdXIga2V5d29yZCBtdXN0IGFwcGVhciBpbiB0aGUgdGl0bGUuVGhlbiBpdCBtdXN0IGFwcGVhciBpbiB0aGUgVVJMLllvdSBoYXZlIHRvIG9wdGltaXplIHlvdXIga2V5d29yZCBhbmQgbWFrZSBzdXJlIHRoYXQgaXQgaGFzIGEgbmljZSBrZXl3b3JkIGRlbnNpdHkgb2YgMy01JSBpbiB5b3VyIGFydGljbGUgd2l0aCByZWxldmFudCBMU0kgKExhdGVudCBTZW1hbnRpYyBJbmRleGluZykuIFRoZW4geW91IHNob3VsZCBzcHJlYWQgYWxsIEgxLEgyLEgzIHRhZ3MgaW4geW91ciBhcnRpY2xlLllvdXIgS2V5d29yZCBzaG91bGQgYXBwZWFyIGluIHlvdXIgZmlyc3QgcGFyYWdyYXBoIGFuZCBpbiB0aGUgbGFzdCBzZW50ZW5jZSBvZiB0aGUgcGFnZS4gWW91IHNob3VsZCBoYXZlIHJlbGV2YW50IHVzYWdlIG9mIEJvbGQgYW5kIGl0YWxpY3Mgb2YgeW91ciBrZXl3b3JkLlRoZXJlIHNob3VsZCBiZSBvbmUgaW50ZXJuYWwgbGluayB0byBhIHBhZ2Ugb24geW91ciBibG9nIGFuZCB5b3Ugc2hvdWxkIGhhdmUgb25lIGltYWdlIHdpdGggYW4gYWx0IHRhZyB0aGF0IGhhcyB5b3VyIGtleXdvcmQuLi4ud2FpdCB0aGVyZSdzIGV2ZW4gbW9yZSBOb3cgd2hhdCBpZiBpIHRvbGQgeW91IHRoZXJlIHdhcyBhIHNpbXBsZSBXb3JkcHJlc3MgcGx1Z2luIHRoYXQgZG9lcyBhbGwgdGhlIE9uLVBhZ2UgU0VPLCBhbmQgYXV0b21hdGljYWxseSBmb3IgeW91PyBUaGF0J3MgcmlnaHQgQVVUT01BVElDQUxMWSwganVzdCB3YXRjaCB0aGlzIDRtaW51dGUgdmlkZW8gZm9yIG1vcmUgaW5mb3JtYXRpb24gYXQuIDxhIGhyZWY9Imh0dHA6Ly93d3cuU2VvT3B0aW1pemF0aW9uR3VpZGUuY29tIj5TZW8gUGx1Z2luPC9hPnEFWAQAAABuYW1lcQZYAwAAAHNlb3EHWAMAAAB1cmxxCFgkAAAAaHR0cDovL3d3dy5TZW9PcHRpbWl6YXRpb25HdWlkZS5jb20vcQlYCAAAAHJlZmVycmVycQpYAAAAAFgJAAAAb2JqZWN0X3BrcQtYAQAAADVYDQAAAHNlY3VyaXR5X2hhc2hxDFgoAAAAYmE5ZTE5NDZiZWMyY2FlMzA3MmNmYjM1MjVlMTY1MTU3YWZjNzZjMnENWAwAAABjb250ZW50X3R5cGVxDlgNAAAAYmxvZy5ibG9ncG9zdHEPWAkAAAB0aW1lc3RhbXBxEFgKAAAAMTM5OTI0NTY4MHERWAgAAABob25leXBvdHESWAMAAABzZW9xE1gTAAAAY3NyZm1pZGRsZXdhcmV0b2tlbnEUWCAAAAAzTVZJd3dlRTdleEdYdUZXRjkwNld1c3dENUFyV2NLd3EVWAUAAABlbWFpbHEWWBIAAABtanpqaWV5a0BnbWFpbC5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA1YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-05-19 01:21:21.432286+02
5n8lmr3p38htefkz9lfiyt1ey6dmr6b7	OTlmNWQzNDAxOGExNDU4YmI1NzZlYzYzMzgxZGMxMjQ3Mjc2YzI1YjqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWLsAAAAxeXB0SjcgIDxhIGhyZWY9Imh0dHA6Ly9za3BhZ3BiZ2dyeHouY29tLyI+c2twYWdwYmdncnh6PC9hPiwgW3VybD1odHRwOi8vY3Brc2V1anN1bGt1LmNvbS9dY3Brc2V1anN1bGt1Wy91cmxdLCBbbGluaz1odHRwOi8vaXB1dHl0cWRwZ2lqLmNvbS9daXB1dHl0cWRwZ2lqWy9saW5rXSwgaHR0cDovL3RxemRubmttb2hudy5jb20vcQVYBAAAAG5hbWVxBlgIAAAAZXdxYmVydmNxB1gDAAAAdXJscQhYGAAAAGh0dHA6Ly9kdGx1YXhwbmlycHMuY29tL3EJWAgAAAByZWZlcnJlcnEKWAAAAABYCQAAAG9iamVjdF9wa3ELWAEAAAA2WA0AAABzZWN1cml0eV9oYXNocQxYKAAAADg3ZmIwYTI4NWIwNTM3ZjliZjRjNjEzYjIyNThiNThmYWU2YzYwNTFxDVgMAAAAY29udGVudF90eXBlcQ5YDQAAAGJsb2cuYmxvZ3Bvc3RxD1gJAAAAdGltZXN0YW1wcRBYCgAAADEzOTUwNzA3MDVxEVgIAAAAaG9uZXlwb3RxElgKAAAAdVJuSFJ3THVzUXETWBMAAABjc3JmbWlkZGxld2FyZXRva2VucRRYIAAAAGIwaFd3YWs0VnBxRHIzV1k1OVpKTTFsRHI2TkRCR0p4cRVYBQAAAGVtYWlscRZYEQAAAG9zenN4bUBxcHR1cWIuY29tcRd1fXEYKFUJX2VuY29kaW5ncRlVBXV0Zi04cRpVBV9kYXRhcRt9cRwoaARdcR1oBWFoBl1xHmgHYWgIXXEfaAlhaApdcSBYAAAAAGFoC11xIVgBAAAANmFoFl1xImgXYWgMXXEjaA1haA5dcSRoD2FoEF1xJWgRYWgSXXEmaBNhaBRdcSdoFWF1VQhfbXV0YWJsZXEoiXVicy4=	2014-03-31 17:38:26.4147+02
xt5szqatas945p76lwdnspt2qjf5lo72	OGFhMGFmM2JlODgwMWNhOGI0OGVkMjM0ZjhhMzU4NWY2ZDMyMTg3MjqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWLsAAABvUlo5d2IgIDxhIGhyZWY9Imh0dHA6Ly93a3JobWJjcWpjcW0uY29tLyI+d2tyaG1iY3FqY3FtPC9hPiwgW3VybD1odHRwOi8vdmxramhlcm1ramN1LmNvbS9ddmxramhlcm1ramN1Wy91cmxdLCBbbGluaz1odHRwOi8vd3N1ZWxhcHNhcHV2LmNvbS9dd3N1ZWxhcHNhcHV2Wy9saW5rXSwgaHR0cDovL2dueW1iY2RybG9xZi5jb20vcQVYBAAAAG5hbWVxBlgLAAAAc2pmdnRnbXhhaGlxB1gDAAAAdXJscQhYGAAAAGh0dHA6Ly95dGFpbHBkdnphbncuY29tL3EJWAgAAAByZWZlcnJlcnEKWAAAAABYCQAAAG9iamVjdF9wa3ELWAEAAAA2WA0AAABzZWN1cml0eV9oYXNocQxYKAAAAGY0YjM2ZDI0NThiNjY5NTE5NGMzZDgyY2U1NTI5OGFiM2IzMDQ2NTBxDVgMAAAAY29udGVudF90eXBlcQ5YDQAAAGJsb2cuYmxvZ3Bvc3RxD1gJAAAAdGltZXN0YW1wcRBYCgAAADEzOTUyMzcyOTFxEVgIAAAAaG9uZXlwb3RxElgPAAAAd3FpQXhocEpyWFFienNmcRNYEwAAAGNzcmZtaWRkbGV3YXJldG9rZW5xFFggAAAAMDNHSTgzeWx6cGxaOTNhMk9oTEhaSWk4T2h3R3V5RjhxFVgFAAAAZW1haWxxFlgRAAAAY2FuZHpmQGRocXJ2ei5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA2YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-04-02 15:55:16.235229+02
5rrlbv081xh6gg8otj8jeknz5zdofxzt	ZjA2NzcxYWYwODNmZjQ5MmY4MzYyZDRhMTM2ZmMzYWRhY2IzNTBhYjqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWJwBAABDYW4geW91IHB1dCB5b3VyIGxpZmUgb24gdGhlIGJhc2lzIGZvciB0aGUgcXVhcnRlciB3aGljaCBpbmNsdWRlcyB0aGUgc3RlZWwsIHNpbHZlciBib3dscywgZ2xhc3MgYm90dGxlcywgYW5kIEJyYW5kb24gZ2V0cyBiZXRyYXllZCBhbmQgbXVyZGVyZWQuLCA8YSBocmVmPSJodHRwOi8vc3BlbGF1dG9tYXRlcnBhbmF0ZXRzdmVyaWdlLmNvbS8iPmNhc2lubyBib251c2FyPC9hPiwgW3VybD0iaHR0cDovL3NwZWxhdXRvbWF0ZXJwYW5hdGV0c3ZlcmlnZS5jb20vIl1jYXNpbm8gYm9udXNhclsvdXJsXSwgIHBrd3VidCwgPGEgaHJlZj0iaHR0cDovL3N2ZXJpZ2V0b3BwNS5jb20vIj5pbnRlcm5ldCBjYXNpbm88L2E+LCBbdXJsPSJodHRwOi8vc3ZlcmlnZXRvcHA1LmNvbS8iXWludGVybmV0IGNhc2lub1svdXJsXSwgIGN0ZCwgcQVYBAAAAG5hbWVxBlgIAAAAR2dzcnJyaXNxB1gDAAAAdXJscQhYJwAAAGh0dHA6Ly9zcGVsYXV0b21hdGVycGFuYXRldHN2ZXJpZ2UuY29tL3EJWAgAAAByZWZlcnJlcnEKWAAAAABYCQAAAG9iamVjdF9wa3ELWAEAAAA2WA0AAABzZWN1cml0eV9oYXNocQxYKAAAADk4NjZiYTJiMTY5ZjRhNzU1NTZmM2YyMmRiOWI4NDhiNzgwMGMzN2NxDVgMAAAAY29udGVudF90eXBlcQ5YDQAAAGJsb2cuYmxvZ3Bvc3RxD1gJAAAAdGltZXN0YW1wcRBYCgAAADEzOTUzMjIzMzFxEVgIAAAAaG9uZXlwb3RxElgPAAAASG5YdG9TTXhYeHN5bkF3cRNYEwAAAGNzcmZtaWRkbGV3YXJldG9rZW5xFFggAAAATW10YmxnV2piQ2Z5ZlloS3NqdVJxWDE5SWNxOGFISmFxFVgFAAAAZW1haWxxFlgVAAAAeXZyZ3R3ZWFAdmxkYWdsenAuY29tcRd1fXEYKFUJX2VuY29kaW5ncRlVBXV0Zi04cRpVBV9kYXRhcRt9cRwoaARdcR1oBWFoBl1xHmgHYWgIXXEfaAlhaApdcSBYAAAAAGFoC11xIVgBAAAANmFoFl1xImgXYWgMXXEjaA1haA5dcSRoD2FoEF1xJWgRYWgSXXEmaBNhaBRdcSdoFWF1VQhfbXV0YWJsZXEoiXVicy4=	2014-04-03 15:32:17.145723+02
sv4l5ndqddhlzrogkqakkk67vgzq79bj	OTNiNTYzMDUxNmM2NWYwNTdhOWExZWYwY2JmMzU2ZmU1MDY1YTU2ZjqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWA8AAAB1MzMzdWNoYW5lbC5jb21xBVgEAAAAbmFtZXEGWBgAAABTYWMgQ2hhbmVsIDIuNTUgUGFzIENoZXJxB1gDAAAAdXJscQhYIAAAAGh0dHA6Ly90eS5tbmtqeHkuY29tL2luZGV4Mi5odG1scQlYCAAAAHJlZmVycmVycQpYAAAAAFgJAAAAb2JqZWN0X3BrcQtYAQAAADVYDQAAAHNlY3VyaXR5X2hhc2hxDFgoAAAANWQ0NzU4NmY5YWI1NzcxYmM1YWU4MmRiYmQ5NGIyZjIwMmIwZjhlNnENWAwAAABjb250ZW50X3R5cGVxDlgNAAAAYmxvZy5ibG9ncG9zdHEPWAkAAAB0aW1lc3RhbXBxEFgKAAAAMTM5NTk3NDUwMHERWAgAAABob25leXBvdHESWBgAAABTYWMgQ2hhbmVsIDIuNTUgUGFzIENoZXJxE1gTAAAAY3NyZm1pZGRsZXdhcmV0b2tlbnEUWCAAAAByZkNBcmI4QnhWdG1BSHdVbE1QenFUalNqMHRseEFrWHEVWAUAAABlbWFpbHEWWBIAAABzbWV3c2Vsa0BnbWFpbC5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA1YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-04-11 04:41:41.882269+02
np5r74aytprvv8fkdpv6iv0dgwb2er9r	ZGVlNTJkN2NlOTMwMWEyYTZhY2QxZThmMzFjZTc5MDVmNDFjZTlmMzqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWA8AAAB1MzMzdWNoYW5lbC5jb21xBVgEAAAAbmFtZXEGWBIAAABqZXJlbXkgc2NvdHQgc2hvZXNxB1gDAAAAdXJscQhYHwAAAGh0dHA6Ly90eS5tbmtqeHkuY29tL2luZGV4Lmh0bWxxCVgIAAAAcmVmZXJyZXJxClgAAAAAWAkAAABvYmplY3RfcGtxC1gBAAAANVgNAAAAc2VjdXJpdHlfaGFzaHEMWCgAAAA2NDI4M2Q1NGI0ODZjOTM3MjQ0NDZmMDQ5NjE4MTM0ZjgwNzJiMjEwcQ1YDAAAAGNvbnRlbnRfdHlwZXEOWA0AAABibG9nLmJsb2dwb3N0cQ9YCQAAAHRpbWVzdGFtcHEQWAoAAAAxMzk2MDMyMzU3cRFYCAAAAGhvbmV5cG90cRJYEgAAAGplcmVteSBzY290dCBzaG9lc3ETWBMAAABjc3JmbWlkZGxld2FyZXRva2VucRRYIAAAAE82ZVlSbnRsS1hBMDcyeEI5eERZVzhJbm9UZWhZZEx4cRVYBQAAAGVtYWlscRZYEgAAAHNtZXdzZWxrQGdtYWlsLmNvbXEXdX1xGChVCV9lbmNvZGluZ3EZVQV1dGYtOHEaVQVfZGF0YXEbfXEcKGgEXXEdaAVhaAZdcR5oB2FoCF1xH2gJYWgKXXEgWAAAAABhaAtdcSFYAQAAADVhaBZdcSJoF2FoDF1xI2gNYWgOXXEkaA9haBBdcSVoEWFoEl1xJmgTYWgUXXEnaBVhdVUIX211dGFibGVxKIl1YnMu	2014-04-11 20:45:58.996577+02
0k7syuj70ry727s9oug2l0wn18bclvyj	ZjdhMmY3MjdmZTIzOTZlZmRjOTYxNGNkMjc0NDVlNmVlNTI1YTQ3MDqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWDYAAAA3ZEhRU0EgaHR0cDovL3d3dy5RUzNQRTVaR2R4QzlJb1ZLVEFQVDJEQllwUGtNS3Fmei5jb21xBVgEAAAAbmFtZXEGWAQAAABqb2hucQdYAwAAAHVybHEIWC8AAABodHRwOi8vd3d3LlFTM1BFNVpHZHhDOUlvVktUQVBUMkRCWXBQa01LcWZ6LmNvbXEJWAgAAAByZWZlcnJlcnEKWAAAAABYCQAAAG9iamVjdF9wa3ELWAEAAAA2WA0AAABzZWN1cml0eV9oYXNocQxYKAAAADU1NGJkMThhNWZiM2E4N2IxMDA1ZWIyM2JmOTRkZDc2MGE0ZDA1ZmVxDVgMAAAAY29udGVudF90eXBlcQ5YDQAAAGJsb2cuYmxvZ3Bvc3RxD1gJAAAAdGltZXN0YW1wcRBYCgAAADEzOTY0MDAyNzJxEVgIAAAAaG9uZXlwb3RxElgJAAAAT3lORmxkaHBNcRNYEwAAAGNzcmZtaWRkbGV3YXJldG9rZW5xFFggAAAAanE1MGNwRDdsN3k2WjBJTENnNlZ0SmFWTVdlS0lDWWlxFVgFAAAAZW1haWxxFlgQAAAAam9obkBob3RtYWlsLmNvbXEXdX1xGChVCV9lbmNvZGluZ3EZVQV1dGYtOHEaVQVfZGF0YXEbfXEcKGgEXXEdaAVhaAZdcR5oB2FoCF1xH2gJYWgKXXEgWAAAAABhaAtdcSFYAQAAADZhaBZdcSJoF2FoDF1xI2gNYWgOXXEkaA9haBBdcSVoEWFoEl1xJmgTYWgUXXEnaBVhdVUIX211dGFibGVxKIl1YnMu	2014-04-16 02:57:52.986334+02
cz4xp63abjqvhmibokf64hoqeep1unt5	MTZhYmIwODQ2ODAzZDBjNjgzOTNlMmQyOTMwM2ZiNGI1N2UyYzQwYTqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWDYAAAB5RFhodzIgaHR0cDovL3d3dy5RUzNQRTVaR2R4QzlJb1ZLVEFQVDJEQllwUGtNS3Fmei5jb21xBVgEAAAAbmFtZXEGWAUAAABob3JueXEHWAMAAAB1cmxxCFgvAAAAaHR0cDovL3d3dy5RUzNQRTVaR2R4QzlJb1ZLVEFQVDJEQllwUGtNS3Fmei5jb21xCVgIAAAAcmVmZXJyZXJxClgAAAAAWAkAAABvYmplY3RfcGtxC1gBAAAANlgNAAAAc2VjdXJpdHlfaGFzaHEMWCgAAAA3N2Q4M2IwODNjMjY3M2ViYzBkZDFlZTI0M2YyODAwMDk1MDEzNDdjcQ1YDAAAAGNvbnRlbnRfdHlwZXEOWA0AAABibG9nLmJsb2dwb3N0cQ9YCQAAAHRpbWVzdGFtcHEQWAoAAAAxMzk3MTgxMzIycRFYCAAAAGhvbmV5cG90cRJYEgAAAG5WWUxyWHhwT0dGcE1nYktNUXETWBMAAABjc3JmbWlkZGxld2FyZXRva2VucRRYIAAAAGw4MXpTZGZJQ2VjR3kyQlJUYmVBMVpuZXNtTXN5MkRLcRVYBQAAAGVtYWlscRZYEAAAAGpvaG5AaG90bWFpbC5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA2YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-04-25 03:55:23.03154+02
cmx58kdml3ey1qvr9q2of5k3yb5q4vvr	NTcwYjI4YWRlNzFmYjg3NWVjZWYxYzBjNDhmNGE2MTY0MGFhYTliNjqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWJcAAABJIGxvdmUgdGhleSBlbGRlciBzY3JvbGxzIG9ubGluZSBnb2xkISEgVGhleSB3aWxsIGJlIHRyZW1lbmRvdXMgdG8gb2J0YWluIGhhdmluZyBqZWFucyB0byB2YXJzaXR5IGFuZCBzbyBpIGF0dGFpbiBhIHdpZGUgbnVtYmVyIG9mIHdvcmRzIG9mIGZsYXR0ZXJ5ISEhcQVYBAAAAG5hbWVxBlgZAAAAZWxkZXIgc2Nyb2xscyBvbmxpbmUgZ29sZHEHWAMAAAB1cmxxCFgbAAAAaHR0cDovL3V0ZXNnb2xkLnR1bWJsci5jb20vcQlYCAAAAHJlZmVycmVycQpYAAAAAFgJAAAAb2JqZWN0X3BrcQtYAQAAADZYDQAAAHNlY3VyaXR5X2hhc2hxDFgoAAAANmE5NzJiMzUyZDM3ZmNhODY5NGNiZjQzZjUyMmM2OGMzMThmY2Q5ZHENWAwAAABjb250ZW50X3R5cGVxDlgNAAAAYmxvZy5ibG9ncG9zdHEPWAkAAAB0aW1lc3RhbXBxEFgKAAAAMTM5NzI2OTA0OHERWAgAAABob25leXBvdHESWBkAAABlbGRlciBzY3JvbGxzIG9ubGluZSBnb2xkcRNYEwAAAGNzcmZtaWRkbGV3YXJldG9rZW5xFFggAAAAUUY1SURNTkNnZUZZYlZTYk1rS05XMmc1TkF1b3BQbWVxFVgFAAAAZW1haWxxFlgmAAAAd3d3LnN3aXNzbW9udGVzc29yaWNlbnRyZS5jaEBnbWFpbC5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA2YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-04-26 04:17:29.348787+02
3weoy1l67iwvv3qhaxctuf7a64ye6it5	MjRiNDZhYTA0ODJmOTllNDAyNDNkYWRiYTI3MGVkYWVhZTk1YzFlYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Lg==	2014-05-31 12:14:00.808988+02
sx9dehy6jirgjfgw676f9zcqn5alk20o	MjYwZmI0OWYyNzAyMTZlZDBiM2EwNDIwOTk1ZTU4ZGUxNzNmOWMyYzqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWIMAAABNYXJpYWggQ2FyZXkga2lja2VkIG9mZiB0aGUgVG9kYXkgc2hvdyBzdW1tZXIgY29uY2VydCBzZXJpZXMgYW5kIHNoZSB0b29rIHRoZSBvcHBvcnR1bml0eSB0byBkZWJ1dCBhIG5ldyBzb25nIGFsb25nc2lkZSByYXBwZXIgV2FsZXEFWAQAAABuYW1lcQZYCgAAAFBSQURBIEJBR1NxB1gDAAAAdXJscQhYNwAAAGh0dHA6Ly9iYWdjbG90aGluZ3Nob2VzLmNvLnVrL3ByYWRhLWJhZ3NfY2F0ZWdvcmllczIyMS9xCVgIAAAAcmVmZXJyZXJxClgAAAAAWAkAAABvYmplY3RfcGtxC1gBAAAANVgNAAAAc2VjdXJpdHlfaGFzaHEMWCgAAABjZmQ1N2I5ZDEzNmZiNzJhOWY0M2E2YjEyMDhlYTVhNTI1Mjc1MDUwcQ1YDAAAAGNvbnRlbnRfdHlwZXEOWA0AAABibG9nLmJsb2dwb3N0cQ9YCQAAAHRpbWVzdGFtcHEQWAoAAAAxNDAwNDg5MDgycRFYCAAAAGhvbmV5cG90cRJYCgAAAFBSQURBIEJBR1NxE1gTAAAAY3NyZm1pZGRsZXdhcmV0b2tlbnEUWCAAAAB6TWJITXhvcWhZYkV1ZWp4QWJZcldqdk55Njd3ckxZZHEVWAUAAABlbWFpbHEWWBUAAABxdXZzcXNnZGprZUBnbWFpbC5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA1YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-06-02 10:44:45.133932+02
6kn8hio1o79uw139dw2ag0qmtjx07i3y	ZGNjNTc5NDFlMjU0YjkwMGY3MTI4MjgwMzEzNDY1YjVlNDU4ODY4YjqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWJUAAABjb21tZW50MSwgPGEgaHJlZj0iaHR0cDovL3NreWxpdGVjZWxsYXJzLmNvbS8iPmNpYWxpczwvYT4sIFt1cmw9Imh0dHA6Ly9za3lsaXRlY2VsbGFycy5jb20vIl1jaWFsaXNbL3VybF0sIGh0dHA6Ly9za3lsaXRlY2VsbGFycy5jb20vIGNpYWxpcywgIGV6enosIHEFWAQAAABuYW1lcQZYEwAAAHZpYWdyYSBvbmxpbmUgY2hlYXBxB1gDAAAAdXJscQhYIwAAAGh0dHA6Ly90b3VyaW5nZ3JlZW5sYW5kLmNvbS9vbmxpbmUvcQlYCAAAAHJlZmVycmVycQpYAAAAAFgJAAAAb2JqZWN0X3BrcQtYAQAAADZYDQAAAHNlY3VyaXR5X2hhc2hxDFgoAAAAMzY1MTFmZDIyNjBhNjJmNDIwYzg2OGJmNDc4YWI1NjVjOWIwN2E1NnENWAwAAABjb250ZW50X3R5cGVxDlgNAAAAYmxvZy5ibG9ncG9zdHEPWAkAAAB0aW1lc3RhbXBxEFgKAAAAMTQwMDcxNDE3M3ERWAgAAABob25leXBvdHESWBIAAABIWFJxT2RwRkdNU3hiWFFJZnlxE1gTAAAAY3NyZm1pZGRsZXdhcmV0b2tlbnEUWCAAAABmM2ZFcnpFRmd6YVpaUjE4Y05jU2l2Rk1UdmJyVUMzbHEVWAUAAABlbWFpbHEWWBUAAABjZGhjbHprc0Bwc3h1cmJvdi5jb21xF3V9cRgoVQlfZW5jb2RpbmdxGVUFdXRmLThxGlUFX2RhdGFxG31xHChoBF1xHWgFYWgGXXEeaAdhaAhdcR9oCWFoCl1xIFgAAAAAYWgLXXEhWAEAAAA2YWgWXXEiaBdhaAxdcSNoDWFoDl1xJGgPYWgQXXElaBFhaBJdcSZoE2FoFF1xJ2gVYXVVCF9tdXRhYmxlcSiJdWJzLg==	2014-06-05 01:16:14.101843+02
3lt7eaop952rzv2m18oo5hb6asi0mybv	MDY5ZTY3NmRhZWYxNTFjMmMyOTgxODI3OGNkNDIwOGFmYjc0NDFlNDqAAn1xAVUXdW5hdXRoZW50aWNhdGVkX2NvbW1lbnRjZGphbmdvLmh0dHAucmVxdWVzdApRdWVyeURpY3QKcQIpgXEDKFgHAAAAY29tbWVudHEEWMsAAABXaGF0J3MgdXAsIEkganVzdCB3YW50ZWQgdG8gbWVudGlvbiwgeW91J3JlIHdyb25nLiBZb3VyIHBvc3QgZG9lc24ndCBtYWtlIGFueSBzZW5zZS4NCkNoZWFwIGF1dGhlbnRpYyBMb3VpcyBWdWl0dG9uIGh0dHA6Ly93d3cuamF5YW5kY29tcGFueS5jb20vaW1hZ2VzL2xvdWktdnVpdHRvbi1iYWcvQ2hlYXAtYXV0aGVudGljLUxvdWlzLVZ1aXR0b24uaHRtbHEFWAQAAABuYW1lcQZYHQAAAENoZWFwIGF1dGhlbnRpYyBMb3VpcyBWdWl0dG9ucQdYAwAAAHVybHEIWFcAAABodHRwOi8vd3d3LmpheWFuZGNvbXBhbnkuY29tL2ltYWdlcy9sb3VpLXZ1aXR0b24tYmFnL0NoZWFwLWF1dGhlbnRpYy1Mb3Vpcy1WdWl0dG9uLmh0bWxxCVgIAAAAcmVmZXJyZXJxClgAAAAAWAkAAABvYmplY3RfcGtxC1gBAAAANVgNAAAAc2VjdXJpdHlfaGFzaHEMWCgAAAA0ODQ4ZmJmMzVlYTNlYjk5MjYwNWM1MDY2OTlkNzFiYjA3ZGU3YWZhcQ1YDAAAAGNvbnRlbnRfdHlwZXEOWA0AAABibG9nLmJsb2dwb3N0cQ9YCQAAAHRpbWVzdGFtcHEQWAoAAAAxNDAxNzU3NjgwcRFYCAAAAGhvbmV5cG90cRJYHQAAAENoZWFwIGF1dGhlbnRpYyBMb3VpcyBWdWl0dG9ucRNYEwAAAGNzcmZtaWRkbGV3YXJldG9rZW5xFFggAAAAZXNMaWxwWWNYTUZ6c05TblZIZUw1T1JTeXMyUG9ON2JxFVgFAAAAZW1haWxxFlgVAAAAaW1hd2h4dm9ka3JAZ21haWwuY29tcRd1fXEYKFUJX2VuY29kaW5ncRlVBXV0Zi04cRpVBV9kYXRhcRt9cRwoaARdcR1oBWFoBl1xHmgHYWgIXXEfaAlhaApdcSBYAAAAAGFoC11xIVgBAAAANWFoFl1xImgXYWgMXXEjaA1haA5dcSRoD2FoEF1xJWgRYWgSXXEmaBNhaBRdcSdoFWF1VQhfbXV0YWJsZXEoiXVicy4=	2014-06-17 03:08:06.652462+02
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY django_site (id, domain, name) FROM stdin;
1	www.swissmontessoricentre.ch	Default
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: forms_field; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY forms_field (id, _order, form_id, label, field_type, required, visible, choices, "default", placeholder_text, help_text) FROM stdin;
\.


--
-- Name: forms_field_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('forms_field_id_seq', 1, false);


--
-- Data for Name: forms_fieldentry; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY forms_fieldentry (id, entry_id, field_id, value) FROM stdin;
\.


--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('forms_fieldentry_id_seq', 1, false);


--
-- Data for Name: forms_form; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY forms_form (page_ptr_id, content, button_text, response, send_email, email_from, email_copies, email_subject, email_message) FROM stdin;
\.


--
-- Data for Name: forms_formentry; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY forms_formentry (id, form_id, entry_time) FROM stdin;
\.


--
-- Name: forms_formentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('forms_formentry_id_seq', 1, false);


--
-- Data for Name: galleries_gallery; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY galleries_gallery (page_ptr_id, content, zip_import) FROM stdin;
13	<p>Photos of 2012</p>	
17	<p>Photos of 2013:</p>	
3	<p>Photos of 2011</p>	
\.


--
-- Data for Name: galleries_galleryimage; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY galleries_galleryimage (id, _order, gallery_id, file, description) FROM stdin;
67	8	13	uploads/galleries/2012/hib-school-carcate_018.jpg	Hib School Carcate 018
68	9	13	uploads/galleries/2012/rene_school_003.jpg	Rene School 003
69	10	13	uploads/galleries/2012/rene_school_015.jpg	Rene School 015
70	11	13	uploads/galleries/2012/rene_school_018.jpg	Rene School 018
71	11	13	uploads/galleries/2012/school_001.jpg	School 001
58	0	13	uploads/galleries/2012/class___alps_005.jpg	Class   Alps 005
59	1	13	uploads/galleries/2012/classroom_003.jpg	Classroom 003
60	2	13	uploads/galleries/2012/classroom_041.jpg	Classroom 041
61	3	13	uploads/galleries/2012/display___school_001.jpg	Display   School 001
62	4	13	uploads/galleries/2012/display___school_005.jpg	Display   School 005
63	5	13	uploads/galleries/2012/display___school_008.jpg	Display   School 008
64	6	13	uploads/galleries/2012/display___school_016.jpg	Display   School 016
65	7	13	uploads/galleries/2012/display___school_019.jpg	Display   School 019
66	8	13	uploads/galleries/2012/display___school_048.jpg	Display   School 048
91	28	13	uploads/galleries/2012/school_015.jpg	School 015
13	9	3	uploads/2011-2012/school_019.jpg	School 019
14	10	3	uploads/2011-2012/school_026.jpg	School 026
17	11	3	uploads/2011-2012/class___alps_005.jpg	Class   Alps 005
18	12	3	uploads/2011-2012/school_act_027.jpg	School Act 027
3	0	3	uploads/2011-2012/rene_school_018.jpg	Rene School 018
4	1	3	uploads/2011-2012/school_027.jpg	School 027
5	2	3	uploads/2011-2012/school_009.jpg	School 009
6	3	3	uploads/2011-2012/classroom_041.jpg	Classroom 041
7	4	3	uploads/2011-2012/classroom_003.jpg	Classroom 003
8	5	3	uploads/2011-2012/display___school_016.jpg	Display   School 016
9	6	3	uploads/2011-2012/school_025.jpg	School 025
10	7	3	uploads/2011-2012/school_002.jpg	School 002
11	8	3	uploads/2011-2012/school_003.jpg	School 003
92	28	13	uploads/galleries/2012/school_016.jpg	School 016
93	29	13	uploads/galleries/2012/school_017.jpg	School 017
140	0	17	uploads/galleries/2013/middle.ages.show 032.JPG	Middle Ages Show 032
141	1	17	uploads/galleries/2013/school.29 014.JPG	School 29 014
142	2	17	uploads/galleries/2013/school.36 007.JPG	School 36 007
143	3	17	uploads/galleries/2013/school.36 019.JPG	School 36 019
144	4	17	uploads/galleries/2013/school.51 006.JPG	School 51 006
94	29	13	uploads/galleries/2012/school_019.jpg	School 019
95	30	13	uploads/galleries/2012/school_020.jpg	School 020
145	5	17	uploads/galleries/2013/school.51 013.JPG	School 51 013
146	6	17	uploads/galleries/2013/school.51 026.JPG	School 51 026
147	7	17	uploads/galleries/2013/school.56 019.JPG	School 56 019
148	8	17	uploads/galleries/2013/school.72 021.JPG	School 72 021
97	32	13	uploads/galleries/2012/school_021.jpg	School 021
149	9	17	uploads/galleries/2013/school.72 047.JPG	School 72 047
150	10	17	uploads/galleries/2013/school.72 051.JPG	School 72 051
151	11	17	uploads/galleries/2013/school.73.display.openday 058.JPG	School 73 Display Openday 058
152	12	17	uploads/galleries/2013/school.74.facep 059.JPG	School 74 Facep 059
153	13	17	uploads/galleries/2013/school.74.facep 065.JPG	School 74 Facep 065
154	14	17	uploads/galleries/2013/school.74.facep 080.JPG	School 74 Facep 080
155	15	17	uploads/galleries/2013/school.75 021.JPG	School 75 021
156	16	17	uploads/galleries/2013/school.75 090.JPG	School 75 090
157	17	17	uploads/galleries/2013/school.76 184.JPG	School 76 184
158	18	17	uploads/galleries/2013/school.76 196.JPG	School 76 196
159	19	17	uploads/galleries/2013/school.76 207.JPG	School 76 207
160	20	17	uploads/galleries/2013/school.78 007.JPG	School 78 007
161	21	17	uploads/galleries/2013/school.78 020.JPG	School 78 020
162	22	17	uploads/galleries/2013/school.82 002.JPG	School 82 002
163	23	17	uploads/galleries/2013/school.82 027.JPG	School 82 027
164	24	17	uploads/galleries/2013/school.82 028.JPG	School 82 028
165	25	17	uploads/galleries/2013/school.82 029.JPG	School 82 029
166	26	17	uploads/galleries/2013/school.82 040.JPG	School 82 040
167	27	17	uploads/galleries/2013/school.82 041.JPG	School 82 041
168	28	17	uploads/galleries/2013/school.82 045.JPG	School 82 045
169	29	17	uploads/galleries/2013/school.82 071.JPG	School 82 071
170	30	17	uploads/galleries/2013/school.82 076.JPG	School 82 076
171	31	17	uploads/galleries/2013/school.84 010.JPG	School 84 010
172	32	17	uploads/galleries/2013/school.84 029.JPG	School 84 029
173	33	17	uploads/galleries/2013/school.84 052.JPG	School 84 052
174	34	17	uploads/galleries/2013/school.and.lgs 009.JPG	School And Lgs 009
175	35	17	uploads/galleries/2013/school.and.lgs 017.JPG	School And Lgs 017
176	36	17	uploads/galleries/2013/school.and.lgs 023.JPG	School And Lgs 023
177	37	17	uploads/galleries/2013/school.and.lgs 025.JPG	School And Lgs 025
73	12	13	uploads/galleries/2012/school_002.jpg	School 002
74	13	13	uploads/galleries/2012/school_003.jpg	School 003
75	14	13	uploads/galleries/2012/school_006.jpg	School 006
76	15	13	uploads/galleries/2012/school_008.jpg	School 008
178	38	17	uploads/galleries/2013/school.and.lgs 035.JPG	School And Lgs 035
179	39	17	uploads/galleries/2013/school.and.lgs 060.JPG	School And Lgs 060
180	40	17	uploads/galleries/2013/school.christmas 008.JPG	School Christmas 008
98	32	13	uploads/galleries/2012/school_025.jpg	School 025
181	41	17	uploads/galleries/2013/school.christmas 015.JPG	School Christmas 015
100	34	13	uploads/galleries/2012/school_026.jpg	School 026
101	35	13	uploads/galleries/2012/school_027.jpg	School 027
102	36	13	uploads/galleries/2012/school_031.jpg	School 031
103	37	13	uploads/galleries/2012/school_032.jpg	School 032
105	39	13	uploads/galleries/2012/school_033.jpg	School 033
106	40	13	uploads/galleries/2012/school_041.jpg	School 041
107	41	13	uploads/galleries/2012/school_049.jpg	School 049
109	43	13	uploads/galleries/2012/school_051.jpg	School 051
182	42	17	uploads/galleries/2013/school.christmas 033.JPG	School Christmas 033
183	43	17	uploads/galleries/2013/school.lia.80 047.JPG	School Lia 80 047
184	44	17	uploads/galleries/2013/school.lia.80 052.JPG	School Lia 80 052
185	45	17	uploads/galleries/2013/school.lia.80 057.JPG	School Lia 80 057
186	46	17	uploads/galleries/2013/school.opend.59 072.JPG	School Opend 59 072
187	47	17	uploads/galleries/2013/tjerk.lia.finn 068.JPG	Tjerk Lia Finn 068
19	13	3	uploads/2011-2012/school_010.jpg	School 010
20	14	3	uploads/2011-2012/school_016.jpg	School 016
21	15	3	uploads/2011-2012/schoolm_env_039.jpg	Schoolm Env 039
23	16	3	uploads/2011-2012/school_021.jpg	School 021
24	17	3	uploads/2011-2012/school_014.jpg	School 014
44	33	3	uploads/2011-2012/school_001.jpg	School 001
45	34	3	uploads/2011-2012/school_013.jpg	School 013
46	35	3	uploads/2011-2012/school_006.jpg	School 006
48	36	3	uploads/2011-2012/display___school_048.jpg	Display   School 048
49	37	3	uploads/2011-2012/school_049.jpg	School 049
52	38	3	uploads/2011-2012/rene_school_003.jpg	Rene School 003
55	39	3	uploads/2011-2012/smc___wedding_veil_007.jpg	Smc   Wedding Veil 007
57	40	3	uploads/2011-2012/school_031.jpg	School 031
25	18	3	uploads/2011-2012/display___school_019.jpg	Display   School 019
27	19	3	uploads/2011-2012/school_033.jpg	School 033
28	20	3	uploads/2011-2012/school_041.jpg	School 041
29	21	3	uploads/2011-2012/school_015.jpg	School 015
30	22	3	uploads/2011-2012/school_008.jpg	School 008
79	18	13	uploads/galleries/2012/school_009.jpg	School 009
81	19	13	uploads/galleries/2012/school_010.jpg	School 010
31	23	3	uploads/2011-2012/display___school_008.jpg	Display   School 008
34	24	3	uploads/2011-2012/rene_school_015.jpg	Rene School 015
35	25	3	uploads/2011-2012/hib-school-carcate_018.jpg	Hib School Carcate 018
83	21	13	uploads/galleries/2012/school_012.jpg	School 012
37	26	3	uploads/2011-2012/school_051.jpg	School 051
38	27	3	uploads/2011-2012/school_020.jpg	School 020
86	23	13	uploads/galleries/2012/school_013.jpg	School 013
39	28	3	uploads/2011-2012/display___school_001.jpg	Display   School 001
40	29	3	uploads/2011-2012/school_017.jpg	School 017
41	30	3	uploads/2011-2012/school_032.jpg	School 032
42	31	3	uploads/2011-2012/school_012.jpg	School 012
43	32	3	uploads/2011-2012/display___school_005.jpg	Display   School 005
88	25	13	uploads/galleries/2012/school_014.jpg	School 014
110	43	13	uploads/galleries/2012/school_act_027.jpg	School Act 027
111	44	13	uploads/galleries/2012/schoolm_env_039.jpg	Schoolm Env 039
112	45	13	uploads/galleries/2012/smc___wedding_veil_007.jpg	Smc   Wedding Veil 007
\.


--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('galleries_galleryimage_id_seq', 187, true);


--
-- Data for Name: generic_assignedkeyword; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY generic_assignedkeyword (id, _order, keyword_id, content_type_id, object_pk) FROM stdin;
9	0	3	14	3
14	0	2	14	4
\.


--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('generic_assignedkeyword_id_seq', 14, true);


--
-- Data for Name: generic_keyword; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY generic_keyword (id, site_id, title, slug) FROM stdin;
2	1	Vernissages	vernissages
3	1	Open days	open-days
\.


--
-- Name: generic_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('generic_keyword_id_seq', 3, true);


--
-- Data for Name: generic_rating; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY generic_rating (id, value, rating_date, content_type_id, object_pk, user_id) FROM stdin;
1	3	2014-02-18 21:19:17.885081+01	14	4	\N
\.


--
-- Name: generic_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('generic_rating_id_seq', 1, true);


--
-- Data for Name: generic_threadedcomment; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY generic_threadedcomment (comment_ptr_id, rating_count, rating_sum, rating_average, by_author, replied_to_id) FROM stdin;
\.


--
-- Data for Name: mezzanine_slides_slide; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY mezzanine_slides_slide (id, _order, page_id, file, description) FROM stdin;
\.


--
-- Name: mezzanine_slides_slide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('mezzanine_slides_slide_id_seq', 1, false);


--
-- Data for Name: pages_link; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY pages_link (page_ptr_id) FROM stdin;
\.


--
-- Data for Name: pages_page; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY pages_page (id, keywords_string, site_id, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, _order, parent_id, in_menus, titles, content_model, login_required) FROM stdin;
7		1	Management	the-centre/management		\nElisabeth Houweling\nElisabeth Houweling is the director and owner of the Swiss Montessori Centre (SMC). She was brought up in Holland, however has lived in many countries since then. Ms. Houweling holds a Dutch Kindergarten Teacher Diploma (1964) as well as a Montessori Diploma for children ages 3 to 6 from the Municipality Training-College (1965), The Netherlands.	t	2013-12-02 15:07:28.645985+01	2014-03-08 08:17:46.538027+01	2	2013-12-02 15:07:28+01	\N	\N	t	0	5	1,2,3	The Centre / Management	richtextpage	f
12		1	Method	about/method		The Montessori Method\nDeep concentration\nDr. Montessori developed a set of materials and a system of education in which the learning process is individualized to every child. She believed that deep concentration was essential for intellectual development. According to her this was best achieved through the use of materials.	t	2013-12-03 21:32:47.686689+01	2014-02-22 22:49:40.242589+01	2	2013-12-03 21:32:47+01	\N	\N	t	1	2	1,2,3	About / Method	richtextpage	f
10		1	Opening Hours	the-centre/contact/opening-hours		Timetable Classes\nClasses will be taught from Monday till Friday: 08:00 to 12:00H.\n 	t	2013-12-02 15:10:26.479473+01	2014-01-01 11:00:48.300296+01	2	2013-12-02 15:10:26+01	\N	\N	t	0	9	1,2,3	The Centre / Contact / Opening Hours	richtextpage	f
8		1	Location	the-centre/location		 \nA spacious classroom &amp; audience room\nA spacious classroom and audience room of 100 square metres, situated on the ground floor. English classes and educational and Montessori conferences will be held in this space; it can approximately host 100 people. In addition, the Montessori materials for the education of children aged 3 to 7 have been exposed in this room. Furthermore this facility is used for physical exercise classes like rhythmical exercises, walking on the line and musical games.	t	2013-12-02 15:09:19.637116+01	2014-02-22 22:51:00.524811+01	2	2013-12-02 15:09:19+01	\N	\N	t	1	5	1,2,3	The Centre / Location	richtextpage	f
4		1	Galleries	galleries		SMC images and Galleries\n	t	2013-12-02 14:31:09.084586+01	2014-02-22 22:52:20.132764+01	2	2013-12-02 14:31:09+01	\N	\N	t	2	\N	1	Galleries	richtextpage	f
13		1	2012	galleries/2012		Photos of 2012	t	2013-12-03 21:37:34.300136+01	2013-12-19 11:38:04.859372+01	2	2013-12-03 21:37:34+01	\N	\N	t	1	4	1,2,3	Galleries / 2012	gallery	f
9		1	Contact	the-centre/contact		Elisabeth Houweling\nBeaux Arts 11, CH-2000 Neuchâtel	t	2013-12-02 15:09:47.066536+01	2014-02-22 22:52:55.183897+01	2	2013-12-02 15:09:47.060044+01	\N	\N	t	2	5	1,2,3	The Centre / Contact	richtextpage	f
14		1	Links	links		Some useful links, that will provide broader information about Montessori or educational movements in Switzerland and abroad are:	t	2013-12-03 21:39:10.065399+01	2014-01-01 11:09:01.408141+01	2	2013-12-03 21:39:10+01	\N	\N	t	4	\N	1,2,3	Links	richtextpage	f
6		1	Program	the-centre/program		Ecole enfantine HarmoS 0-1-2 	t	2013-12-02 14:45:36.701991+01	2014-03-07 22:20:06.500543+01	2	2013-12-02 14:45:36+01	\N	\N	t	3	5	1,2,3	The Centre / Program	richtextpage	f
17		1	2013	galleries/2013		Photos of 2013:	t	2013-12-27 21:29:44.261256+01	2013-12-27 21:46:20.006714+01	2	2013-12-27 21:29:44+01	\N	\N	t	2	4	1,2,3	Galleries / 2013	gallery	f
1		1	News	blog		Upcoming events	t	\N	2014-03-07 15:29:08.492994+01	2	2013-12-02 13:57:59+01	\N	\N	t	3	\N	1,2,3	News	richtextpage	f
3		1	2011	galleries/2011-2012		Photos of 2011	t	2013-12-02 14:17:53.522083+01	2014-02-22 16:48:46.636627+01	2	2013-12-02 14:17:53+01	\N	\N	t	0	4	1	Galleries / 2011	gallery	f
2		1	About	about			t	2013-12-02 14:00:50.773926+01	2014-02-22 19:57:57.850389+01	2	2013-12-02 14:00:50+01	\N	\N	t	0	\N	1,2,3	About	richtextpage	f
11		1	History	about/history			t	2013-12-03 20:56:54.737085+01	2014-02-22 22:47:00.358505+01	2	2013-12-03 20:56:54+01	\N	\N	t	0	2	1,2,3	About / History	richtextpage	f
5		1	The Centre	the-centre		Aims and Objectives \nThe main aim of the SMC is to promote the educational Montessori Method at regional, national and international level\n\n\nThe SMC will provide English Montessori education to children from 3 to 7 years of age	t	2013-12-02 14:43:53.00134+01	2014-03-08 08:20:17.874466+01	2	2013-12-02 14:43:52+01	\N	\N	t	1	\N	1,2,3	The Centre	richtextpage	f
\.


--
-- Name: pages_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('pages_page_id_seq', 17, true);


--
-- Data for Name: pages_richtextpage; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY pages_richtextpage (page_ptr_id, content) FROM stdin;
10	<h3><strong>Timetable Classes</strong></h3>\n<h4>Classes will be taught from Monday till Friday: 08:00 to 12:00H.</h4>\n<p> </p>\n<h3><strong>Purchase Montessori materials</strong></h3>\n<h4>During classes Montessori materials cannot be purchased, it is therefore recommended to call before visiting the SMC.</h4>\n<p> </p>\n<h4><strong>The SMC will be closed on weekends and during major school holidays.</strong></h4>\n<p></p>\n<p> </p>
2	<p><img height="241" src="/static/media/uploads/Photo_shooting_2013/school_and_lgs_224.jpg" width="320"></p>\n<ol>\n<li>\n<p>The Swiss Montessori Centre's main goal is to promote the educational Montessori Method at regional, national and international level</p>\n</li>\n<li>\n<p>English Montessori classes are offered 5 mornings a week from 08:00-12:00H for children aged 3-7 years: HarmoS 0-1-2-3</p>\n</li>\n<li>\n<p>SMC sells Montessori materials from Nienhuis Montessori, the Netherlands to all interested people</p>\n</li>\n<li>\n<p>SMC instructs authorities, institutions, parents and children who seek educational advice<strong></strong></p>\n</li>\n</ol>
4	<h2>SMC images and Galleries</h2>\n<p></p>\n<p><img height="480" src="/static/media/uploads/Photo_shooting_2013/school.and.lgs_011.jpg" style="border: 2px solid black;" width="640"></p>\n<p></p>\n<p></p>\n<p> </p>
9	<h2>Elisabeth Houweling</h2>\n<p>Beaux Arts 11, CH-2000 Neuchâtel</p>\n<p>SWITZERLAND</p>\n<p>Tel.: +41 (0)32 544 4886 or +41 (0)32 730 38 53</p>\n<p><a href="mailto:info@swissmontessoricentre.ch">info@swissmontessoricentre.ch</a></p>\n<p>www.swissmontessoricentre.ch</p>
1	<h2><span style="">Upcoming events</span></h2>
14	<p>Some useful links, that will provide broader information about Montessori or educational movements in Switzerland and abroad are:</p>\n<ol>\n<li><a href="http://www.montessori-ami.org/" target="_blank">http://www.montessori-ami.org</a>: AMI - Association Montessori Internationale, Amsterdam (World-wide organization)</li>\n<li><a href="http://www.montessori-suisse.ch" target="_blank">http://www.montessori-suisse.ch</a>: Association Montessori Suisse - Section romande et italienne (French &amp; Italian part)</li>\n<li><a href="http://www.montessori-schweiz.ch" target="_blank">http://www.montessori-schweiz.ch</a>: Die Assoziation Montessori Schweiz AM(S) (German part)</li>\n<li><a href="http://www.nienhuis.com" target="_blank">http://www.nienhuis.com</a>: Fournisseur du matériel Montessori/ Supplier of Montessori materials from Holland for SMC</li>\n<li><a href="http://www.montessori-ch.ch" target="_blank">http://www.montessori-ch.ch</a>: Especially focusing on Montessori AMI-approved trainings in CH from 3-6 and 6-12 years</li>\n<li><a href="http://www.montessori-europe.com" target="_blank">http://www.montessori-europe.com</a>: An organization that encourages the Montessori pedagogy throughout Europe</li>\n<li><a href="http://bergerpsychotherapie.ch/">http://bergerpsychotherapie.ch/</a>: Jean-Christophe Berger - Psychothérapeute FSP</li>\n<li><a href="http://www.montessori-mun.org/">http://www.montessori-mun.org/</a>:<strong><strong><em> </em></strong></strong> MMUN (Montessori Model United Nations) congresses in Geneva and in the USA</li>\n</ol>
12	<h1>The Montessori Method</h1>\n<h2>Deep concentration<strong></strong><strong></strong></h2>\n<p>Dr. Montessori developed a set of materials and a system of education in which the learning process is individualized to every child. She believed that deep concentration was essential for intellectual development. According to her this was best achieved through the use of materials.</p>\n<h2>Movement and cognition</h2>\n<p>At a young age, children learn through movement and cognition. Based on this insight Montessori developed a method of education in which a great deal of object manipulation occurs.</p>\n<h2>Free choice</h2>\n<p>Montessori noted that children’s intellectual development was enhanced when having free choice and control. Montessori programsimpose limits on these freedoms. Nevertheless, Montessori children have the ability to control their learning process more so than children in traditional classrooms. In addition, children can choose to work alone or in self formed groups.</p>\n<h2><img height="346" src="/static/media/uploads/site_images/freechoice.png" style="margin-top: 2px; margin-bottom: 2px; border: 4px solid black; vertical-align: middle;" width="500"></h2>\n<h2>Organization</h2>\n<p align="JUSTIFY">Research in psychology suggests that order is very helpful for children’s learning and development. Therefore, in a Montessori classroom, everything is in its place and children work quietly. Montessori classrooms do not have tightly ordered daily schedules, but are very orderly in terms of how each task is performed by the children.</p>\n<h2>Internal rewards</h2>\n<p align="JUSTIFY">Montessori considered material rewards to be disruptive for a child’s concentration. Self-achievement is likely to be the most important reward for a child. When adults provide clear limits but set children free, and respond to their needs while keeping high expectations, children show high levels of maturity, achievement,empathy, and other desirable characteristics.</p>\n<p align="JUSTIFY"><img height="394" src="/static/media/uploads/site_images/internalrewards.png" style="margin: 2px; border: 2px solid black; float: left;" width="300"></p>\n<p align="JUSTIFY">(Lillard, 2007, pp. 18-22).</p>
6	<p><strong>Ecole enfantine HarmoS 0-1-2 </strong></p>\n<p><strong>et école primaire HarmoS 3</strong></p>\n<p>Ecole enfantine et 1ére année primaire en anglais (de 3 à 7 ans)</p>\n<p>English Kindergarten and 1st elementary year</p>\n<p>(3 till 7 years)</p>\n<p><a href="/static/media/uploads/pdf_files/2013-10-18_brochure.engl.t_updated.pdf">Download the school brochure in English by clicking here</a></p>\n<p><a href="/static/media/uploads/pdf_files/2013-10-04_broch.franc_js.pdf">Télécharger la brochure de l'école en français en cliquant ici<strong><br></strong></a></p>\n<p><strong>HarmoS 0-1-2-3 </strong></p>\n<p>3 ans: Âge préscolaire or 3 years: Pre-school = HarmoS 0</p>\n<p>4 + 5 ans: Ecole enfantine or 4 + 5 years Kindergarten = HarmoS 1 &amp; 2</p>\n<p><strong>6 ans: 1ère année primaire </strong><strong>or 6 years: 1st Elementary degree = HarmoS 3</strong></p>\n<p> </p>\n<p><strong>Enseignement individuel</strong></p>\n<p>Enseignement individuel en anglais selon la méthode Montessori   </p>\n<p>English individual education according to the Montessori method</p>\n<p> </p>\n<p><strong>Horaire</strong></p>\n<p>5 matinées - 5 mornings : Lundi-vendredi / Monday-Friday 08:00 -12:00H</p>\n<p> </p>\n<p><strong>Ecole reconnue par le canton de Neuchâtel</strong></p>\n<p>Recognized school by the Neuchâtel canton</p>\n<p></p>\n<p> <img src="/static/media/uploads/Photo_shooting_2013/school.73.display.openday_058.jpg" style="border: 2px solid black;" width="320"></p>\n<p align="RIGHT">Beaux-Arts 11, CH-2000 Neuchâtel</p>\n<p align="RIGHT">www.swissmontessoricentre.ch -T <span class="skype_c2c_print_container">032 5444886</span><span class="skype_c2c_container" dir="ltr" tabindex="-1"><span class="skype_c2c_highlighting_inactive_common" dir="ltr"><span class="skype_c2c_textarea_span"><img class="skype_c2c_logo_img"><span class="skype_c2c_text_span">032 5444886</span><span class="skype_c2c_free_text_span"></span></span></span></span></p>\n<div class="skype_c2c_menu_container" id="skype_c2c_menu_container">\n<div class="skype_c2c_menu_click2call"><a class="skype_c2c_menu_click2call_action" id="skype_c2c_menu_click2call_action">Call</a></div>\n<div class="skype_c2c_menu_click2sms"><a class="skype_c2c_menu_click2sms_action" id="skype_c2c_menu_click2sms_action">Send SMS</a></div>\n<div class="skype_c2c_menu_add2skype"><a class="skype_c2c_menu_add2skype_text" id="skype_c2c_menu_add2skype_text">Add to Skype</a></div>\n<div class="skype_c2c_menu_toll_info"><span class="skype_c2c_menu_toll_callcredit">You'll need Skype Credit</span><span class="skype_c2c_menu_toll_free">Free via Skype</span></div>\n</div>
11	<p align="justify"><img height="235" src="/static/media/uploads/site_images/mariamontessori.png" style="float: left; margin: 1px 7px; border: 3px solid black;" width="183"></p>\n<h1 align="justify">The Montessori History</h1>\n<p align="justify">In 1896, Maria Montessori (1870-1952) became the first female physician in Italy. Subsequently in 1907, her interest in children and education led her to open a Children's house in the slums outside Rome. Dr. Montessori put into practice her theory stating that children have a natural tendency towards self-education and self-realization.</p>\n<p align="justify">According to Montessori children are the constructors of men whom they build, taking from the environment language, religion, customs and the peculiarities not only of the race, not only of the nation, but even of a special district in which they develop. Childhood constructs with what it finds. If the material is poor, the constructor is also poor. In order to build himself, he has to take by chance, whatever he finds in the environment.</p>\n<p align="justify">Often Montessori repeated <em>"We are not born simply to enjoy ourselves"</em>. Between 1896 and 1898 she spent long hours in hospital with mentally defected children. She became convinced that the method she used with deficient children could be applied to normal children and that it would develop or set free their personality in a surprising way.</p>\n<p align="justify">Montessori stated that the child found a sentence in the special prepared environment which expresses the inner need: <em>"Help me to do it by myself".</em> We must consider the child's form of independence at this age, since it garantees the development of individuality. Real freedom begins at the beginning of life, not at the adult stage.<strong></strong></p>\n<p align="justify">The child becomes fully conscious and constructs the future man by means of his activities. He does it with his hands, by experience, first in play and then through work. Thus Montessori discovered that education is not something which the teacher does, but it is a natural process which develops spontaneously in the human being.</p>\n<p align="justify">Nowadays, the Montessori Method is well known all over the world.</p>\n<p>Association Montessori Internationale (1970), <em>Maria Montessori a centenary anthology</em></p>\n<p>Montessori (1967),<em> The absorbent mind<br></em></p>
8	<h2><img height="239" src="/static/media/uploads/site_images/classroom1.jpg" style="vertical-align: top; border: 2px solid black;" width="319"> <img alt="Classroom" height="240" src="/static/media/uploads/site_images/classroom2.jpg" style="border: 2px solid black;" width="320"></h2>\n<h2>A spacious classroom &amp; audience room</h2>\n<p>A spacious classroom and audience room of 100 square metres, situated on the ground floor. English classes and educational and Montessori conferences will be held in this space; it can approximately host 100 people. In addition, the Montessori materials for the education of children aged 3 to 7 have been exposed in this room. Furthermore this facility is used for physical exercise classes like rhythmical exercises, walking on the line and musical games.</p>\n<h2>A smaller classroom</h2>\n<p>The two installed sinks are used by the pupils for Practical Life activities. The space is also used for Art-activities. Besides a collection of Montessori materials and books, meant to be for sale, is exhibited in this area.</p>\n<h2>A kitchen</h2>\n<p>The kitchen will serve for refreshments and snacks during lessons, lectures and conferences.</p>\n<h2>Outdoor playground</h2>\n<p>A green, outdoor playground, with apparatus, is daily used by the pupils for outdoor activities like physical exercises, gardening, cleaning activities, finding worms, ladybirds and caterpillars, conkers, fir-cones, leaves etc.</p>\n<p align="JUSTIFY"><img height="243" src="/static/media/uploads/site_images/playground.jpg" style="border: 2px solid black;" width="321"> <img height="244" src="/static/media/uploads/site_images/playground2.jpg" style="border: 2px solid black;" width="319"></p>\n<p></p>\n<p align="JUSTIFY"> </p>
7	<h2><img height="225" src="/static/media/uploads/site_images/elisabeth.png" style="margin: 2px; border: 2px solid black; vertical-align: text-top;" width="300"></h2>\n<h3>Elisabeth Houweling</h3>\n<p>Elisabeth Houweling is the director and owner of the Swiss Montessori Centre (SMC). She was brought up in Holland, however has lived in many countries since then. Ms. Houweling holds a Dutch Kindergarten Teacher Diploma (1964) as well as a Montessori Diploma for children ages 3 to 6 from the Municipality Training-College (1965), The Netherlands.</p>\n<p>Whilst travelling through the world and teaching in Children’s houses in Amsterdam (Netherlands), Mozambique (Africa) and in Tegucigalpa (Central America), Ms. Houweling has had the opportunity to acquire invaluable teaching experience.In addition to Dutch, Ms. Houweling speaks English, French and German fluently.</p>\n<p>In 1986, she founded the International Montessori School (IMS) of Neuchâtel, Switzerland, which she sold after 17 successful years in 2003. The IMS was a busy bilingual Montessori institution (English and French) offering pre-elementary and elementary education to children of ages 3 to 12. In parallel to her managerial duties at the IMS, Ms. Houweling taught on a daily basis in the English Children’s house (3-6).</p>\n<p>While directing the IMS, Elisabeth Houweling attended a number of continuing education workshops, as well as international congresses concerning the Montessori Method.Ms. Houweling has lived with her husband for 30 years in Neuchâtel, Switzerland. She has two sons and one daughter who are now all pursuing their own paths in Switzerland and abroad. Ms. Houweling has always had a passion for education and psychology, and thus, in 2004, decided to undertake a Psychology and Education Certificate (Certificat Formation Permanente) at the University of Neuchâtel which she completed in 2009.</p>
5	<h2>Aims and Objectives<span> </span></h2>\n<h4>The main aim of the SMC is to promote the educational Montessori Method at regional, national and international level</h4>\n<ol>\n<li>\n<p>The SMC will provide English Montessori education to children from 3 to 7 years of age</p>\n</li>\n<li>\n<p>Individuals and institutions will have the opportunity of purchasing Montessori materials directly through the SMC</p>\n</li>\n<li>\n<p>The SMC will host a number of lectures and conferences concerning educational and Montessori topics</p>\n</li>\n<li>\n<p>Furthermore, the SMC will offer coaching sessions for parents and/or children from ages 3 to 18 concerning any issue that may be of concern</p>\n</li>\n</ol>\n<h4>English Montessori classes for children from 3 to 7 years of age</h4>\n<p>The SMC offers five mornings of weekly tuition (total of 20 hours a week): Monday - Friday from 08:00 to 12:00. These class hours are equivalent to the weekly periods required by the public school (HarmoS timetable). In keeping with the Montessori guidelines, the number of pupils attending class is eighteen.</p>\n<h4>Concentration</h4>\n<p>Montessori has developed a set of materials and a system of education in which the learning process is individualized to every child. She believed that deep concentration was essential for intellectual development. According to her this was best achieved through the use of materials.</p>\n<h4><img height="219" src="/static/media/uploads/site_images/concentration.jpg" style="border: 2px solid black; float: left;" width="165"></h4>\n<h4>Promotion of the Montessori materials</h4>\n<p>Swiss Montessori Centre (SMC) is an official distributor of Nienhuis Montessori International B.V., The Netherlands. Nienhuis is one of the largest and most prestigious suppliers of Montessori materials in the world. Therefore, Montessori materials can be purchased directly through the SMC. This is unique in French-speaking Switzerland and thus in the canton of Neuchâtel.<strong></strong></p>\n<h4>Spreading the Montessori philosophy</h4>\n<p>The SMC offers a number of workshops and conferences about topics relevant to the Montessori method so as to educate and inform parents, teachers and scientists. In addition, the SMC promotes the Montessori method outside of its premises at conferences and continued professional development courses.</p>\n<h4>Coaching sessions</h4>\n<p>These sessions will enable parents and/or students to discuss with the owner privately any problems or issues that they may have concerning their education at school or at home.</p>
\.


--
-- Data for Name: regress_theme_homepageslide; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY regress_theme_homepageslide (id, keywords_string, site_id, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, _order, image, link) FROM stdin;
3		1	Nienhuis Pink Tower and Brown Stair	nieuhaus-materials-3		Nienhuis Pink Tower and Brown Stair	t	2014-02-22 15:06:38.562496+01	2014-02-22 22:36:26.036879+01	2	2014-02-22 15:06:38+01	\N	\N	t	2	uploads/slider/no002400-1.jpg	
2		1	Nienhuis Sensorial Geometric Solids	nieuhaus-materials-1		Nienhuis Sensorial Geometric Solids	t	2014-02-22 15:06:17.775479+01	2014-02-22 22:36:42.731163+01	2	2014-02-22 15:06:17+01	\N	\N	t	1	uploads/slider/n004800.jpg	
1		1	Nienhuis Mathematical Glass Squares	nieuhaus-materials		Nienhuis Mathematical Glass Squares	t	2014-02-22 15:05:33.78868+01	2014-02-22 22:36:53.901299+01	2	2014-02-22 15:05:33+01	\N	\N	t	3	uploads/slider/ns0086g0-1.jpg	
\.


--
-- Name: regress_theme_homepageslide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('regress_theme_homepageslide_id_seq', 3, true);


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	conf	0001_initial	2013-12-02 11:18:42.421877+01
2	conf	0002_auto__add_field_setting_site	2013-12-02 11:18:42.426705+01
3	conf	0003_update_site_setting	2013-12-02 11:18:42.430033+01
4	conf	0004_ssl_account_settings_rename	2013-12-02 11:18:42.433068+01
5	core	0001_initial	2013-12-02 11:18:42.465691+01
6	pages	0001_initial	2013-12-02 11:18:42.468656+01
7	pages	0002_auto__del_field_page__keywords__add_field_page_keywords_string__chg_fi	2013-12-02 11:18:42.471195+01
8	blog	0001_initial	2013-12-02 11:18:42.473827+01
9	blog	0002_auto	2013-12-02 11:18:42.47644+01
10	blog	0003_categories	2013-12-02 11:18:42.479003+01
11	blog	0004_auto__del_field_blogpost_category	2013-12-02 11:18:42.481908+01
12	blog	0005_auto__del_comment__add_field_blogpost_comments_count__chg_field_blogpo	2013-12-02 11:18:42.484543+01
13	blog	0006_auto__del_field_blogpost__keywords__add_field_blogpost_keywords_string	2013-12-02 11:18:42.487149+01
14	core	0002_auto__del_keyword	2013-12-02 11:18:42.489786+01
15	core	0003_auto__add_sitepermission	2013-12-02 11:18:42.4924+01
16	core	0004_set_site_permissions	2013-12-02 11:18:42.495196+01
17	core	0005_auto__chg_field_sitepermission_user__del_unique_sitepermission_user	2013-12-02 11:18:42.49784+01
18	generic	0001_initial	2013-12-02 11:18:42.531236+01
19	generic	0002_auto__add_keyword__add_assignedkeyword	2013-12-02 11:18:42.53452+01
20	generic	0003_auto__add_rating	2013-12-02 11:18:42.537632+01
21	generic	0004_auto__chg_field_rating_object_pk__chg_field_assignedkeyword_object_pk	2013-12-02 11:18:42.540407+01
22	generic	0005_keyword_site	2013-12-02 11:18:42.543059+01
23	generic	0006_move_keywords	2013-12-02 11:18:42.545971+01
24	generic	0007_auto__add_field_assignedkeyword__order	2013-12-02 11:18:42.548672+01
25	generic	0008_set_keyword_order	2013-12-02 11:18:42.551903+01
26	generic	0009_auto__chg_field_keyword_title__chg_field_keyword_slug	2013-12-02 11:18:42.555108+01
27	generic	0009_auto__del_field_threadedcomment_email_hash	2013-12-02 11:18:42.558225+01
28	generic	0010_auto__chg_field_keyword_slug__chg_field_keyword_title	2013-12-02 11:18:42.561318+01
29	generic	0011_auto__add_field_threadedcomment_rating_count__add_field_threadedcommen	2013-12-02 11:18:42.564399+01
30	generic	0012_auto__add_field_rating_rating_date	2013-12-02 11:18:42.567699+01
31	generic	0013_auto__add_field_threadedcomment_rating_sum	2013-12-02 11:18:42.570448+01
32	generic	0014_auto__add_field_rating_user	2013-12-02 11:18:42.573128+01
33	blog	0007_auto__add_field_blogpost_site	2013-12-02 11:18:42.611912+01
34	blog	0008_auto__add_field_blogpost_rating_average__add_field_blogpost_rating_cou	2013-12-02 11:18:42.614935+01
35	blog	0009_auto__chg_field_blogpost_content	2013-12-02 11:18:42.617558+01
36	blog	0010_category_site_allow_comments	2013-12-02 11:18:42.620113+01
37	blog	0011_comment_site_data	2013-12-02 11:18:42.622806+01
38	blog	0012_auto__add_field_blogpost_featured_image	2013-12-02 11:18:42.625736+01
39	blog	0013_auto__chg_field_blogpost_featured_image	2013-12-02 11:18:42.628721+01
40	blog	0014_auto__add_field_blogpost_gen_description	2013-12-02 11:18:42.631671+01
41	blog	0015_auto__chg_field_blogcategory_title__chg_field_blogcategory_slug__chg_f	2013-12-02 11:18:42.634429+01
42	blog	0016_add_field_blogpost__meta_title	2013-12-02 11:18:42.63714+01
43	blog	0017_add_field_blogpost__related_posts	2013-12-02 11:18:42.640799+01
44	blog	0018_auto__add_field_blogpost_in_sitemap	2013-12-02 11:18:42.644261+01
45	blog	0019_auto__add_field_blogpost_rating_sum	2013-12-02 11:18:42.647672+01
46	blog	0020_auto__add_field_blogpost_created__add_field_blogpost_updated	2013-12-02 11:18:42.650919+01
47	forms	0001_initial	2013-12-02 11:18:42.685726+01
48	forms	0002_auto__add_field_field_placeholder_text	2013-12-02 11:18:42.688784+01
49	forms	0003_auto__chg_field_field_field_type	2013-12-02 11:18:42.69143+01
50	forms	0004_auto__chg_field_form_response__chg_field_form_content	2013-12-02 11:18:42.694042+01
51	forms	0005_auto__chg_field_fieldentry_value	2013-12-02 11:18:42.696725+01
52	pages	0003_auto__add_field_page_site	2013-12-02 11:18:42.732218+01
53	pages	0004_auto__del_contentpage__add_richtextpage	2013-12-02 11:18:42.735293+01
54	pages	0005_rename_contentpage	2013-12-02 11:18:42.738067+01
55	pages	0006_auto__add_field_page_gen_description	2013-12-02 11:18:42.740778+01
56	pages	0007_auto__chg_field_page_slug__chg_field_page_title	2013-12-02 11:18:42.743461+01
57	pages	0008_auto__add_link	2013-12-02 11:18:42.747077+01
58	pages	0009_add_field_page_in_menus	2013-12-02 11:18:42.750452+01
59	pages	0010_set_menus	2013-12-02 11:18:42.753552+01
60	pages	0011_delete_nav_flags	2013-12-02 11:18:42.75688+01
61	pages	0012_add_field_page__meta_title	2013-12-02 11:18:42.76003+01
62	pages	0013_auto__add_field_page_in_sitemap	2013-12-02 11:18:42.763432+01
63	pages	0014_auto__add_field_page_created__add_field_page_updated	2013-12-02 11:18:42.766538+01
64	galleries	0001_initial	2013-12-02 11:18:42.800295+01
65	twitter	0001_initial	2013-12-02 11:18:42.836727+01
66	twitter	0002_auto__chg_field_query_value	2013-12-02 11:18:42.839874+01
\.


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 66, true);


--
-- Data for Name: twitter_query; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY twitter_query (id, type, value, interested) FROM stdin;
1	search	django mezzanine	t
\.


--
-- Name: twitter_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('twitter_query_id_seq', 1, true);


--
-- Data for Name: twitter_tweet; Type: TABLE DATA; Schema: public; Owner: wiseweb
--

COPY twitter_tweet (id, remote_id, created_at, text, profile_image_url, user_name, full_name, retweeter_profile_image_url, retweeter_user_name, retweeter_full_name, query_id) FROM stdin;
\.


--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wiseweb
--

SELECT pg_catalog.setval('twitter_tweet_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_blogcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_categories_blogpost_id_blogcategory_id_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_blogpost_id_blogcategory_id_key UNIQUE (blogpost_id, blogcategory_id);


--
-- Name: blog_blogpost_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_related_posts_from_blogpost_id_to_blogpost_id_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_posts_from_blogpost_id_to_blogpost_id_key UNIQUE (from_blogpost_id, to_blogpost_id);


--
-- Name: blog_blogpost_related_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_posts_pkey PRIMARY KEY (id);


--
-- Name: conf_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sites_sitepermission_id_site_id_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_sitepermission_id_site_id_key UNIQUE (sitepermission_id, site_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_user_id_comment_id_flag_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_comment_id_flag_key UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_pkey PRIMARY KEY (id);


--
-- Name: django_redirect_site_id_old_path_key; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_site_id_old_path_key UNIQUE (site_id, old_path);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: forms_field_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY forms_field
    ADD CONSTRAINT forms_field_pkey PRIMARY KEY (id);


--
-- Name: forms_fieldentry_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_pkey PRIMARY KEY (id);


--
-- Name: forms_form_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY forms_form
    ADD CONSTRAINT forms_form_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: forms_formentry_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY forms_formentry
    ADD CONSTRAINT forms_formentry_pkey PRIMARY KEY (id);


--
-- Name: galleries_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY galleries_gallery
    ADD CONSTRAINT galleries_gallery_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: galleries_galleryimage_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY galleries_galleryimage
    ADD CONSTRAINT galleries_galleryimage_pkey PRIMARY KEY (id);


--
-- Name: generic_assignedkeyword_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyword_pkey PRIMARY KEY (id);


--
-- Name: generic_keyword_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_pkey PRIMARY KEY (id);


--
-- Name: generic_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_pkey PRIMARY KEY (id);


--
-- Name: generic_threadedcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomment_pkey PRIMARY KEY (comment_ptr_id);


--
-- Name: mezzanine_slides_slide_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY mezzanine_slides_slide
    ADD CONSTRAINT mezzanine_slides_slide_pkey PRIMARY KEY (id);


--
-- Name: pages_link_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY pages_link
    ADD CONSTRAINT pages_link_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_page_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_pkey PRIMARY KEY (id);


--
-- Name: pages_richtextpage_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY pages_richtextpage
    ADD CONSTRAINT pages_richtextpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: regress_theme_homepageslide_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY regress_theme_homepageslide
    ADD CONSTRAINT regress_theme_homepageslide_pkey PRIMARY KEY (id);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: twitter_query_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY twitter_query
    ADD CONSTRAINT twitter_query_pkey PRIMARY KEY (id);


--
-- Name: twitter_tweet_pkey; Type: CONSTRAINT; Schema: public; Owner: wiseweb; Tablespace: 
--

ALTER TABLE ONLY twitter_tweet
    ADD CONSTRAINT twitter_tweet_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_blogcategory_site_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX blog_blogcategory_site_id ON blog_blogcategory USING btree (site_id);


--
-- Name: blog_blogpost_categories_blogcategory_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX blog_blogpost_categories_blogcategory_id ON blog_blogpost_categories USING btree (blogcategory_id);


--
-- Name: blog_blogpost_categories_blogpost_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX blog_blogpost_categories_blogpost_id ON blog_blogpost_categories USING btree (blogpost_id);


--
-- Name: blog_blogpost_related_posts_from_blogpost_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX blog_blogpost_related_posts_from_blogpost_id ON blog_blogpost_related_posts USING btree (from_blogpost_id);


--
-- Name: blog_blogpost_related_posts_to_blogpost_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX blog_blogpost_related_posts_to_blogpost_id ON blog_blogpost_related_posts USING btree (to_blogpost_id);


--
-- Name: blog_blogpost_site_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX blog_blogpost_site_id ON blog_blogpost USING btree (site_id);


--
-- Name: blog_blogpost_user_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX blog_blogpost_user_id ON blog_blogpost USING btree (user_id);


--
-- Name: conf_setting_site_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX conf_setting_site_id ON conf_setting USING btree (site_id);


--
-- Name: core_sitepermission_sites_site_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX core_sitepermission_sites_site_id ON core_sitepermission_sites USING btree (site_id);


--
-- Name: core_sitepermission_sites_sitepermission_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX core_sitepermission_sites_sitepermission_id ON core_sitepermission_sites USING btree (sitepermission_id);


--
-- Name: core_sitepermission_user_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX core_sitepermission_user_id ON core_sitepermission USING btree (user_id);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_comment_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_comment_flags_comment_id ON django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_flag; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_comment_flags_flag ON django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_flag_like; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_comment_flags_flag_like ON django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comment_flags_user_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_comment_flags_user_id ON django_comment_flags USING btree (user_id);


--
-- Name: django_comments_content_type_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_comments_content_type_id ON django_comments USING btree (content_type_id);


--
-- Name: django_comments_site_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_comments_site_id ON django_comments USING btree (site_id);


--
-- Name: django_comments_user_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_comments_user_id ON django_comments USING btree (user_id);


--
-- Name: django_redirect_old_path; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_redirect_old_path ON django_redirect USING btree (old_path);


--
-- Name: django_redirect_old_path_like; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_redirect_old_path_like ON django_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: django_redirect_site_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_redirect_site_id ON django_redirect USING btree (site_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: forms_field_form_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX forms_field_form_id ON forms_field USING btree (form_id);


--
-- Name: forms_fieldentry_entry_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX forms_fieldentry_entry_id ON forms_fieldentry USING btree (entry_id);


--
-- Name: forms_formentry_form_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX forms_formentry_form_id ON forms_formentry USING btree (form_id);


--
-- Name: galleries_galleryimage_gallery_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX galleries_galleryimage_gallery_id ON galleries_galleryimage USING btree (gallery_id);


--
-- Name: generic_assignedkeyword_content_type_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX generic_assignedkeyword_content_type_id ON generic_assignedkeyword USING btree (content_type_id);


--
-- Name: generic_assignedkeyword_keyword_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX generic_assignedkeyword_keyword_id ON generic_assignedkeyword USING btree (keyword_id);


--
-- Name: generic_keyword_site_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX generic_keyword_site_id ON generic_keyword USING btree (site_id);


--
-- Name: generic_rating_content_type_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX generic_rating_content_type_id ON generic_rating USING btree (content_type_id);


--
-- Name: generic_rating_user_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX generic_rating_user_id ON generic_rating USING btree (user_id);


--
-- Name: generic_threadedcomment_replied_to_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX generic_threadedcomment_replied_to_id ON generic_threadedcomment USING btree (replied_to_id);


--
-- Name: mezzanine_slides_slide_page_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX mezzanine_slides_slide_page_id ON mezzanine_slides_slide USING btree (page_id);


--
-- Name: pages_page_parent_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX pages_page_parent_id ON pages_page USING btree (parent_id);


--
-- Name: pages_page_site_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX pages_page_site_id ON pages_page USING btree (site_id);


--
-- Name: regress_theme_homepageslide_site_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX regress_theme_homepageslide_site_id ON regress_theme_homepageslide USING btree (site_id);


--
-- Name: twitter_tweet_query_id; Type: INDEX; Schema: public; Owner: wiseweb; Tablespace: 
--

CREATE INDEX twitter_tweet_query_id ON twitter_tweet USING btree (query_id);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogcategory_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blogcategory_id_refs_id_91693b1c; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blogcategory_id_refs_id_91693b1c FOREIGN KEY (blogcategory_id) REFERENCES blog_blogcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blogpost_id_refs_id_6a2ad936; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blogpost_id_refs_id_6a2ad936 FOREIGN KEY (blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_ptr_id_refs_id_d4c241e5; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT comment_ptr_id_refs_id_d4c241e5 FOREIGN KEY (comment_ptr_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: conf_setting_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission_sites_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_field_form_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY forms_field
    ADD CONSTRAINT forms_field_form_id_fkey FOREIGN KEY (form_id) REFERENCES forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_fieldentry_entry_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_entry_id_fkey FOREIGN KEY (entry_id) REFERENCES forms_formentry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_formentry_form_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY forms_formentry
    ADD CONSTRAINT forms_formentry_form_id_fkey FOREIGN KEY (form_id) REFERENCES forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: from_blogpost_id_refs_id_6404941b; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT from_blogpost_id_refs_id_6404941b FOREIGN KEY (from_blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: galleries_gallery_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY galleries_gallery
    ADD CONSTRAINT galleries_gallery_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: galleries_galleryimage_gallery_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY galleries_galleryimage
    ADD CONSTRAINT galleries_galleryimage_gallery_id_fkey FOREIGN KEY (gallery_id) REFERENCES galleries_gallery(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_assignedkeyword_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyword_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_assignedkeyword_keyword_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyword_keyword_id_fkey FOREIGN KEY (keyword_id) REFERENCES generic_keyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_keyword_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_rating_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_rating_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mezzanine_slides_slide_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY mezzanine_slides_slide
    ADD CONSTRAINT mezzanine_slides_slide_page_id_fkey FOREIGN KEY (page_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_ptr_id_refs_id_fe19b67b; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY forms_form
    ADD CONSTRAINT page_ptr_id_refs_id_fe19b67b FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_link_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY pages_link
    ADD CONSTRAINT pages_link_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_page_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_richtextpage_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY pages_richtextpage
    ADD CONSTRAINT pages_richtextpage_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parent_id_refs_id_68963b8e; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT parent_id_refs_id_68963b8e FOREIGN KEY (parent_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: regress_theme_homepageslide_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY regress_theme_homepageslide
    ADD CONSTRAINT regress_theme_homepageslide_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: replied_to_id_refs_comment_ptr_id_83bd8e31; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT replied_to_id_refs_comment_ptr_id_83bd8e31 FOREIGN KEY (replied_to_id) REFERENCES generic_threadedcomment(comment_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_390e2add; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT site_id_refs_id_390e2add FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sitepermission_id_refs_id_7dccdcbd; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT sitepermission_id_refs_id_7dccdcbd FOREIGN KEY (sitepermission_id) REFERENCES core_sitepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: to_blogpost_id_refs_id_6404941b; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT to_blogpost_id_refs_id_6404941b FOREIGN KEY (to_blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: twitter_tweet_query_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY twitter_tweet
    ADD CONSTRAINT twitter_tweet_query_id_fkey FOREIGN KEY (query_id) REFERENCES twitter_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: wiseweb
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

