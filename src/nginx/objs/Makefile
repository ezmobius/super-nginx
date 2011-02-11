
CC =	gcc
CFLAGS =  -pipe  -O -W -Wall -Wpointer-arith -Wno-unused-parameter -Wunused-function -Wunused-variable -Wunused-value -Werror -g  -DNDK_SET_VAR -DNDK_UPSTREAM_LIST -DNDK_SET_VAR -DNDK_SET_VAR -DNDK_SET_VAR -DNDK_SET_VAR
CPP =	gcc -E
LINK =	$(CC)


ALL_INCS = -I src/core \
	-I src/event \
	-I src/event/modules \
	-I src/os/unix \
	-I /Users/ez/projects/nginx-monster-build/src/nginx/../ngx_devel_kit/objs \
	-I objs/addon/ndk \
	-I /usr/local/share/luajit-2.0.0-beta6 \
	-I objs \
	-I src/http \
	-I src/http/modules \
	-I /Users/ez/projects/nginx-monster-build/src/nginx/../ngx_devel_kit/src \
	-I src/mail


CORE_DEPS = src/core/nginx.h \
	src/core/ngx_config.h \
	src/core/ngx_core.h \
	src/core/ngx_log.h \
	src/core/ngx_palloc.h \
	src/core/ngx_array.h \
	src/core/ngx_list.h \
	src/core/ngx_hash.h \
	src/core/ngx_buf.h \
	src/core/ngx_queue.h \
	src/core/ngx_string.h \
	src/core/ngx_parse.h \
	src/core/ngx_inet.h \
	src/core/ngx_file.h \
	src/core/ngx_crc.h \
	src/core/ngx_crc32.h \
	src/core/ngx_md5.h \
	src/core/ngx_sha1.h \
	src/core/ngx_rbtree.h \
	src/core/ngx_radix_tree.h \
	src/core/ngx_slab.h \
	src/core/ngx_times.h \
	src/core/ngx_shmtx.h \
	src/core/ngx_connection.h \
	src/core/ngx_cycle.h \
	src/core/ngx_conf_file.h \
	src/core/ngx_resolver.h \
	src/core/ngx_open_file_cache.h \
	src/event/ngx_event.h \
	src/event/ngx_event_timer.h \
	src/event/ngx_event_posted.h \
	src/event/ngx_event_busy_lock.h \
	src/event/ngx_event_connect.h \
	src/event/ngx_event_pipe.h \
	src/os/unix/ngx_time.h \
	src/os/unix/ngx_errno.h \
	src/os/unix/ngx_alloc.h \
	src/os/unix/ngx_files.h \
	src/os/unix/ngx_channel.h \
	src/os/unix/ngx_shmem.h \
	src/os/unix/ngx_process.h \
	src/os/unix/ngx_setproctitle.h \
	src/os/unix/ngx_atomic.h \
	src/os/unix/ngx_gcc_atomic_x86.h \
	src/os/unix/ngx_thread.h \
	src/os/unix/ngx_socket.h \
	src/os/unix/ngx_os.h \
	src/os/unix/ngx_user.h \
	src/os/unix/ngx_process_cycle.h \
	src/os/unix/ngx_darwin_config.h \
	src/os/unix/ngx_darwin.h \
	src/core/ngx_regex.h \
	objs/ngx_auto_config.h


CORE_INCS = -I src/core \
	-I src/event \
	-I src/event/modules \
	-I src/os/unix \
	-I /Users/ez/projects/nginx-monster-build/src/nginx/../ngx_devel_kit/objs \
	-I objs/addon/ndk \
	-I /usr/local/share/luajit-2.0.0-beta6 \
	-I objs


HTTP_DEPS = src/http/ngx_http.h \
	src/http/ngx_http_request.h \
	src/http/ngx_http_config.h \
	src/http/ngx_http_core_module.h \
	src/http/ngx_http_cache.h \
	src/http/ngx_http_variables.h \
	src/http/ngx_http_script.h \
	src/http/ngx_http_upstream.h \
	src/http/ngx_http_upstream_round_robin.h \
	src/http/ngx_http_busy_lock.h \
	src/http/modules/ngx_http_ssi_filter_module.h


HTTP_INCS = -I src/http \
	-I src/http/modules \
	-I /Users/ez/projects/nginx-monster-build/src/nginx/../ngx_devel_kit/src


ADDON_DEPS = $(CORE_DEPS)  /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_default_value.h /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_hashed_upstream.h /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_quote_sql.h /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_quote_json.h /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_unescape_uri.h /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_escape_uri.h /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_hash.h /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_local_today.h /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_hex.h /Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_base64.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_module.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_handler.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_util.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_sleep.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_filter.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_var.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_location.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_echo.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_request_info.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_subrequest.h /Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_foreach.h /Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_module.h /Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_request.h /Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_response.h /Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_util.h /Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_handler.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_common.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_directive.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_headers.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_hook.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_util.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_cache.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_conf.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_contentby.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_rewriteby.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_accessby.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_setby.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_filter.h /Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_clfactory.h /Users/ez/projects/nginx-monster-build/src/nginx/../srcache-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../srcache-nginx-module/src/ngx_http_srcache_filter_module.h /Users/ez/projects/nginx-monster-build/src/nginx/../srcache-nginx-module/src/ngx_http_srcache_util.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_module.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_handler.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_processor.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_upstream_drizzle.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_util.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_output.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/resty_dbd_stream.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_keepalive.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_quoting.h /Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_checker.h /Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/resty_dbd_stream.h /Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_filter_module.h /Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_processor.h /Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_util.h /Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds.h /Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/resty_dbd_stream.h /Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_output.h /Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_utils.h /Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_handler.h /Users/ez/projects/nginx-monster-build/src/nginx/../xss-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../xss-nginx-module/src/ngx_http_xss_filter_module.h /Users/ez/projects/nginx-monster-build/src/nginx/../xss-nginx-module/src/ngx_http_xss_util.h /Users/ez/projects/nginx-monster-build/src/nginx/../encrypted-session-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../encrypted-session-nginx-module/src/ngx_http_encrypted_session_cipher.h /Users/ez/projects/nginx-monster-build/src/nginx/../form-input-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_filter_module.h /Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_headers_in.h /Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_headers_out.h /Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_headers_in.h /Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_util.h /Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ddebug.h /Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_module.h /Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_handler.h /Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_reply.h /Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_util.h $(HTTP_DEPS)


objs/nginx:	objs/src/core/nginx.o \
	objs/src/core/ngx_log.o \
	objs/src/core/ngx_palloc.o \
	objs/src/core/ngx_array.o \
	objs/src/core/ngx_list.o \
	objs/src/core/ngx_hash.o \
	objs/src/core/ngx_buf.o \
	objs/src/core/ngx_queue.o \
	objs/src/core/ngx_output_chain.o \
	objs/src/core/ngx_string.o \
	objs/src/core/ngx_parse.o \
	objs/src/core/ngx_inet.o \
	objs/src/core/ngx_file.o \
	objs/src/core/ngx_crc32.o \
	objs/src/core/ngx_rbtree.o \
	objs/src/core/ngx_radix_tree.o \
	objs/src/core/ngx_slab.o \
	objs/src/core/ngx_times.o \
	objs/src/core/ngx_shmtx.o \
	objs/src/core/ngx_connection.o \
	objs/src/core/ngx_cycle.o \
	objs/src/core/ngx_spinlock.o \
	objs/src/core/ngx_cpuinfo.o \
	objs/src/core/ngx_conf_file.o \
	objs/src/core/ngx_resolver.o \
	objs/src/core/ngx_open_file_cache.o \
	objs/src/event/ngx_event.o \
	objs/src/event/ngx_event_timer.o \
	objs/src/event/ngx_event_posted.o \
	objs/src/event/ngx_event_busy_lock.o \
	objs/src/event/ngx_event_accept.o \
	objs/src/event/ngx_event_connect.o \
	objs/src/event/ngx_event_pipe.o \
	objs/src/os/unix/ngx_time.o \
	objs/src/os/unix/ngx_errno.o \
	objs/src/os/unix/ngx_alloc.o \
	objs/src/os/unix/ngx_files.o \
	objs/src/os/unix/ngx_socket.o \
	objs/src/os/unix/ngx_recv.o \
	objs/src/os/unix/ngx_readv_chain.o \
	objs/src/os/unix/ngx_udp_recv.o \
	objs/src/os/unix/ngx_send.o \
	objs/src/os/unix/ngx_writev_chain.o \
	objs/src/os/unix/ngx_channel.o \
	objs/src/os/unix/ngx_shmem.o \
	objs/src/os/unix/ngx_process.o \
	objs/src/os/unix/ngx_daemon.o \
	objs/src/os/unix/ngx_setproctitle.o \
	objs/src/os/unix/ngx_posix_init.o \
	objs/src/os/unix/ngx_user.o \
	objs/src/os/unix/ngx_process_cycle.o \
	objs/src/os/unix/ngx_darwin_init.o \
	objs/src/event/modules/ngx_kqueue_module.o \
	objs/src/os/unix/ngx_darwin_sendfile_chain.o \
	objs/src/core/ngx_regex.o \
	objs/src/http/ngx_http.o \
	objs/src/http/ngx_http_core_module.o \
	objs/src/http/ngx_http_special_response.o \
	objs/src/http/ngx_http_request.o \
	objs/src/http/ngx_http_parse.o \
	objs/src/http/ngx_http_header_filter_module.o \
	objs/src/http/ngx_http_write_filter_module.o \
	objs/src/http/ngx_http_copy_filter_module.o \
	objs/src/http/modules/ngx_http_log_module.o \
	objs/src/http/ngx_http_request_body.o \
	objs/src/http/ngx_http_variables.o \
	objs/src/http/ngx_http_script.o \
	objs/src/http/ngx_http_upstream.o \
	objs/src/http/ngx_http_upstream_round_robin.o \
	objs/src/http/ngx_http_parse_time.o \
	objs/src/http/modules/ngx_http_static_module.o \
	objs/src/http/modules/ngx_http_index_module.o \
	objs/src/http/modules/ngx_http_chunked_filter_module.o \
	objs/src/http/modules/ngx_http_range_filter_module.o \
	objs/src/http/modules/ngx_http_headers_filter_module.o \
	objs/src/http/modules/ngx_http_not_modified_filter_module.o \
	objs/src/http/ngx_http_busy_lock.o \
	objs/src/http/ngx_http_file_cache.o \
	objs/src/http/modules/ngx_http_gzip_filter_module.o \
	objs/src/http/ngx_http_postpone_filter_module.o \
	objs/src/http/modules/ngx_http_ssi_filter_module.o \
	objs/src/http/modules/ngx_http_charset_filter_module.o \
	objs/src/http/modules/ngx_http_userid_filter_module.o \
	objs/src/http/modules/ngx_http_autoindex_module.o \
	objs/src/http/modules/ngx_http_auth_basic_module.o \
	objs/src/http/modules/ngx_http_access_module.o \
	objs/src/http/modules/ngx_http_limit_zone_module.o \
	objs/src/http/modules/ngx_http_limit_req_module.o \
	objs/src/http/modules/ngx_http_geo_module.o \
	objs/src/http/modules/ngx_http_map_module.o \
	objs/src/http/modules/ngx_http_split_clients_module.o \
	objs/src/http/modules/ngx_http_referer_module.o \
	objs/src/http/modules/ngx_http_rewrite_module.o \
	objs/src/http/modules/ngx_http_proxy_module.o \
	objs/src/http/modules/ngx_http_fastcgi_module.o \
	objs/src/http/modules/ngx_http_uwsgi_module.o \
	objs/src/http/modules/ngx_http_scgi_module.o \
	objs/src/http/modules/ngx_http_memcached_module.o \
	objs/src/http/modules/ngx_http_empty_gif_module.o \
	objs/src/http/modules/ngx_http_browser_module.o \
	objs/src/http/modules/ngx_http_upstream_ip_hash_module.o \
	objs/addon/src/ndk.o \
	objs/addon/src/ngx_http_set_base32.o \
	objs/addon/src/ngx_http_set_default_value.o \
	objs/addon/src/ngx_http_set_hashed_upstream.o \
	objs/addon/src/ngx_http_set_quote_sql.o \
	objs/addon/src/ngx_http_set_quote_json.o \
	objs/addon/src/ngx_http_set_unescape_uri.o \
	objs/addon/src/ngx_http_set_misc_module.o \
	objs/addon/src/ngx_http_set_escape_uri.o \
	objs/addon/src/ngx_http_set_hash.o \
	objs/addon/src/ngx_http_set_local_today.o \
	objs/addon/src/ngx_http_set_hex.o \
	objs/addon/src/ngx_http_set_base64.o \
	objs/addon/ngx_http_auth_request_module/ngx_http_auth_request_module.o \
	objs/addon/src/ngx_http_echo_module.o \
	objs/addon/src/ngx_http_echo_util.o \
	objs/addon/src/ngx_http_echo_timer.o \
	objs/addon/src/ngx_http_echo_var.o \
	objs/addon/src/ngx_http_echo_handler.o \
	objs/addon/src/ngx_http_echo_filter.o \
	objs/addon/src/ngx_http_echo_sleep.o \
	objs/addon/src/ngx_http_echo_location.o \
	objs/addon/src/ngx_http_echo_echo.o \
	objs/addon/src/ngx_http_echo_request_info.o \
	objs/addon/src/ngx_http_echo_subrequest.o \
	objs/addon/src/ngx_http_echo_foreach.o \
	objs/addon/src/ngx_http_memc_module.o \
	objs/addon/src/ngx_http_memc_request.o \
	objs/addon/src/ngx_http_memc_response.o \
	objs/addon/src/ngx_http_memc_util.o \
	objs/addon/src/ngx_http_memc_handler.o \
	objs/addon/src/ngx_http_lua_module.o \
	objs/addon/src/ngx_http_lua_headers.o \
	objs/addon/src/ngx_http_lua_directive.o \
	objs/addon/src/ngx_http_lua_hook.o \
	objs/addon/src/ngx_http_lua_util.o \
	objs/addon/src/ngx_http_lua_cache.o \
	objs/addon/src/ngx_http_lua_conf.o \
	objs/addon/src/ngx_http_lua_contentby.o \
	objs/addon/src/ngx_http_lua_rewriteby.o \
	objs/addon/src/ngx_http_lua_accessby.o \
	objs/addon/src/ngx_http_lua_setby.o \
	objs/addon/src/ngx_http_lua_filter.o \
	objs/addon/src/ngx_http_lua_clfactory.o \
	objs/addon/src/ngx_http_srcache_filter_module.o \
	objs/addon/src/ngx_http_srcache_util.o \
	objs/addon/src/ngx_http_drizzle_module.o \
	objs/addon/src/ngx_http_drizzle_handler.o \
	objs/addon/src/ngx_http_drizzle_processor.o \
	objs/addon/src/ngx_http_upstream_drizzle.o \
	objs/addon/src/ngx_http_drizzle_util.o \
	objs/addon/src/ngx_http_drizzle_output.o \
	objs/addon/src/ngx_http_drizzle_keepalive.o \
	objs/addon/src/ngx_http_drizzle_quoting.o \
	objs/addon/src/ngx_http_drizzle_checker.o \
	objs/addon/src/ngx_http_rds_json_filter_module.o \
	objs/addon/src/ngx_http_rds_json_processor.o \
	objs/addon/src/ngx_http_rds_json_util.o \
	objs/addon/src/ngx_http_rds_json_output.o \
	objs/addon/src/ngx_http_rds_json_handler.o \
	objs/addon/nginx-eval-module/ngx_http_eval_module.o \
	objs/addon/src/ngx_http_xss_filter_module.o \
	objs/addon/src/ngx_http_xss_util.o \
	objs/addon/ngx_http_upstream_keepalive/ngx_http_upstream_keepalive_module.o \
	objs/addon/src/ngx_http_encrypted_session_module.o \
	objs/addon/src/ngx_http_encrypted_session_cipher.o \
	objs/addon/src/ngx_http_form_input_module.o \
	objs/addon/src/ngx_http_headers_more_filter_module.o \
	objs/addon/src/ngx_http_headers_more_headers_out.o \
	objs/addon/src/ngx_http_headers_more_headers_in.o \
	objs/addon/src/ngx_http_headers_more_util.o \
	objs/addon/src/ngx_http_redis2_module.o \
	objs/addon/src/ngx_http_redis2_handler.o \
	objs/addon/src/ngx_http_redis2_reply.o \
	objs/addon/src/ngx_http_redis2_util.o \
	objs/ngx_modules.o

	$(LINK) -o objs/nginx \
	objs/src/core/nginx.o \
	objs/src/core/ngx_log.o \
	objs/src/core/ngx_palloc.o \
	objs/src/core/ngx_array.o \
	objs/src/core/ngx_list.o \
	objs/src/core/ngx_hash.o \
	objs/src/core/ngx_buf.o \
	objs/src/core/ngx_queue.o \
	objs/src/core/ngx_output_chain.o \
	objs/src/core/ngx_string.o \
	objs/src/core/ngx_parse.o \
	objs/src/core/ngx_inet.o \
	objs/src/core/ngx_file.o \
	objs/src/core/ngx_crc32.o \
	objs/src/core/ngx_rbtree.o \
	objs/src/core/ngx_radix_tree.o \
	objs/src/core/ngx_slab.o \
	objs/src/core/ngx_times.o \
	objs/src/core/ngx_shmtx.o \
	objs/src/core/ngx_connection.o \
	objs/src/core/ngx_cycle.o \
	objs/src/core/ngx_spinlock.o \
	objs/src/core/ngx_cpuinfo.o \
	objs/src/core/ngx_conf_file.o \
	objs/src/core/ngx_resolver.o \
	objs/src/core/ngx_open_file_cache.o \
	objs/src/event/ngx_event.o \
	objs/src/event/ngx_event_timer.o \
	objs/src/event/ngx_event_posted.o \
	objs/src/event/ngx_event_busy_lock.o \
	objs/src/event/ngx_event_accept.o \
	objs/src/event/ngx_event_connect.o \
	objs/src/event/ngx_event_pipe.o \
	objs/src/os/unix/ngx_time.o \
	objs/src/os/unix/ngx_errno.o \
	objs/src/os/unix/ngx_alloc.o \
	objs/src/os/unix/ngx_files.o \
	objs/src/os/unix/ngx_socket.o \
	objs/src/os/unix/ngx_recv.o \
	objs/src/os/unix/ngx_readv_chain.o \
	objs/src/os/unix/ngx_udp_recv.o \
	objs/src/os/unix/ngx_send.o \
	objs/src/os/unix/ngx_writev_chain.o \
	objs/src/os/unix/ngx_channel.o \
	objs/src/os/unix/ngx_shmem.o \
	objs/src/os/unix/ngx_process.o \
	objs/src/os/unix/ngx_daemon.o \
	objs/src/os/unix/ngx_setproctitle.o \
	objs/src/os/unix/ngx_posix_init.o \
	objs/src/os/unix/ngx_user.o \
	objs/src/os/unix/ngx_process_cycle.o \
	objs/src/os/unix/ngx_darwin_init.o \
	objs/src/event/modules/ngx_kqueue_module.o \
	objs/src/os/unix/ngx_darwin_sendfile_chain.o \
	objs/src/core/ngx_regex.o \
	objs/src/http/ngx_http.o \
	objs/src/http/ngx_http_core_module.o \
	objs/src/http/ngx_http_special_response.o \
	objs/src/http/ngx_http_request.o \
	objs/src/http/ngx_http_parse.o \
	objs/src/http/ngx_http_header_filter_module.o \
	objs/src/http/ngx_http_write_filter_module.o \
	objs/src/http/ngx_http_copy_filter_module.o \
	objs/src/http/modules/ngx_http_log_module.o \
	objs/src/http/ngx_http_request_body.o \
	objs/src/http/ngx_http_variables.o \
	objs/src/http/ngx_http_script.o \
	objs/src/http/ngx_http_upstream.o \
	objs/src/http/ngx_http_upstream_round_robin.o \
	objs/src/http/ngx_http_parse_time.o \
	objs/src/http/modules/ngx_http_static_module.o \
	objs/src/http/modules/ngx_http_index_module.o \
	objs/src/http/modules/ngx_http_chunked_filter_module.o \
	objs/src/http/modules/ngx_http_range_filter_module.o \
	objs/src/http/modules/ngx_http_headers_filter_module.o \
	objs/src/http/modules/ngx_http_not_modified_filter_module.o \
	objs/src/http/ngx_http_busy_lock.o \
	objs/src/http/ngx_http_file_cache.o \
	objs/src/http/modules/ngx_http_gzip_filter_module.o \
	objs/src/http/ngx_http_postpone_filter_module.o \
	objs/src/http/modules/ngx_http_ssi_filter_module.o \
	objs/src/http/modules/ngx_http_charset_filter_module.o \
	objs/src/http/modules/ngx_http_userid_filter_module.o \
	objs/src/http/modules/ngx_http_autoindex_module.o \
	objs/src/http/modules/ngx_http_auth_basic_module.o \
	objs/src/http/modules/ngx_http_access_module.o \
	objs/src/http/modules/ngx_http_limit_zone_module.o \
	objs/src/http/modules/ngx_http_limit_req_module.o \
	objs/src/http/modules/ngx_http_geo_module.o \
	objs/src/http/modules/ngx_http_map_module.o \
	objs/src/http/modules/ngx_http_split_clients_module.o \
	objs/src/http/modules/ngx_http_referer_module.o \
	objs/src/http/modules/ngx_http_rewrite_module.o \
	objs/src/http/modules/ngx_http_proxy_module.o \
	objs/src/http/modules/ngx_http_fastcgi_module.o \
	objs/src/http/modules/ngx_http_uwsgi_module.o \
	objs/src/http/modules/ngx_http_scgi_module.o \
	objs/src/http/modules/ngx_http_memcached_module.o \
	objs/src/http/modules/ngx_http_empty_gif_module.o \
	objs/src/http/modules/ngx_http_browser_module.o \
	objs/src/http/modules/ngx_http_upstream_ip_hash_module.o \
	objs/addon/src/ndk.o \
	objs/addon/src/ngx_http_set_base32.o \
	objs/addon/src/ngx_http_set_default_value.o \
	objs/addon/src/ngx_http_set_hashed_upstream.o \
	objs/addon/src/ngx_http_set_quote_sql.o \
	objs/addon/src/ngx_http_set_quote_json.o \
	objs/addon/src/ngx_http_set_unescape_uri.o \
	objs/addon/src/ngx_http_set_misc_module.o \
	objs/addon/src/ngx_http_set_escape_uri.o \
	objs/addon/src/ngx_http_set_hash.o \
	objs/addon/src/ngx_http_set_local_today.o \
	objs/addon/src/ngx_http_set_hex.o \
	objs/addon/src/ngx_http_set_base64.o \
	objs/addon/ngx_http_auth_request_module/ngx_http_auth_request_module.o \
	objs/addon/src/ngx_http_echo_module.o \
	objs/addon/src/ngx_http_echo_util.o \
	objs/addon/src/ngx_http_echo_timer.o \
	objs/addon/src/ngx_http_echo_var.o \
	objs/addon/src/ngx_http_echo_handler.o \
	objs/addon/src/ngx_http_echo_filter.o \
	objs/addon/src/ngx_http_echo_sleep.o \
	objs/addon/src/ngx_http_echo_location.o \
	objs/addon/src/ngx_http_echo_echo.o \
	objs/addon/src/ngx_http_echo_request_info.o \
	objs/addon/src/ngx_http_echo_subrequest.o \
	objs/addon/src/ngx_http_echo_foreach.o \
	objs/addon/src/ngx_http_memc_module.o \
	objs/addon/src/ngx_http_memc_request.o \
	objs/addon/src/ngx_http_memc_response.o \
	objs/addon/src/ngx_http_memc_util.o \
	objs/addon/src/ngx_http_memc_handler.o \
	objs/addon/src/ngx_http_lua_module.o \
	objs/addon/src/ngx_http_lua_headers.o \
	objs/addon/src/ngx_http_lua_directive.o \
	objs/addon/src/ngx_http_lua_hook.o \
	objs/addon/src/ngx_http_lua_util.o \
	objs/addon/src/ngx_http_lua_cache.o \
	objs/addon/src/ngx_http_lua_conf.o \
	objs/addon/src/ngx_http_lua_contentby.o \
	objs/addon/src/ngx_http_lua_rewriteby.o \
	objs/addon/src/ngx_http_lua_accessby.o \
	objs/addon/src/ngx_http_lua_setby.o \
	objs/addon/src/ngx_http_lua_filter.o \
	objs/addon/src/ngx_http_lua_clfactory.o \
	objs/addon/src/ngx_http_srcache_filter_module.o \
	objs/addon/src/ngx_http_srcache_util.o \
	objs/addon/src/ngx_http_drizzle_module.o \
	objs/addon/src/ngx_http_drizzle_handler.o \
	objs/addon/src/ngx_http_drizzle_processor.o \
	objs/addon/src/ngx_http_upstream_drizzle.o \
	objs/addon/src/ngx_http_drizzle_util.o \
	objs/addon/src/ngx_http_drizzle_output.o \
	objs/addon/src/ngx_http_drizzle_keepalive.o \
	objs/addon/src/ngx_http_drizzle_quoting.o \
	objs/addon/src/ngx_http_drizzle_checker.o \
	objs/addon/src/ngx_http_rds_json_filter_module.o \
	objs/addon/src/ngx_http_rds_json_processor.o \
	objs/addon/src/ngx_http_rds_json_util.o \
	objs/addon/src/ngx_http_rds_json_output.o \
	objs/addon/src/ngx_http_rds_json_handler.o \
	objs/addon/nginx-eval-module/ngx_http_eval_module.o \
	objs/addon/src/ngx_http_xss_filter_module.o \
	objs/addon/src/ngx_http_xss_util.o \
	objs/addon/ngx_http_upstream_keepalive/ngx_http_upstream_keepalive_module.o \
	objs/addon/src/ngx_http_encrypted_session_module.o \
	objs/addon/src/ngx_http_encrypted_session_cipher.o \
	objs/addon/src/ngx_http_form_input_module.o \
	objs/addon/src/ngx_http_headers_more_filter_module.o \
	objs/addon/src/ngx_http_headers_more_headers_out.o \
	objs/addon/src/ngx_http_headers_more_headers_in.o \
	objs/addon/src/ngx_http_headers_more_util.o \
	objs/addon/src/ngx_http_redis2_module.o \
	objs/addon/src/ngx_http_redis2_handler.o \
	objs/addon/src/ngx_http_redis2_reply.o \
	objs/addon/src/ngx_http_redis2_util.o \
	objs/ngx_modules.o \
	-L/usr/local/lib -lluajit-5.1 -lm -ldrizzle -lssl -lpcre -lcrypto -lcrypto -lz
	


objs/ngx_modules.o:	$(CORE_DEPS) \
	objs/ngx_modules.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/ngx_modules.o \
		objs/ngx_modules.c


objs/src/core/nginx.o:	$(CORE_DEPS) \
	src/core/nginx.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/nginx.o \
		src/core/nginx.c


objs/src/core/ngx_log.o:	$(CORE_DEPS) \
	src/core/ngx_log.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_log.o \
		src/core/ngx_log.c


objs/src/core/ngx_palloc.o:	$(CORE_DEPS) \
	src/core/ngx_palloc.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_palloc.o \
		src/core/ngx_palloc.c


objs/src/core/ngx_array.o:	$(CORE_DEPS) \
	src/core/ngx_array.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_array.o \
		src/core/ngx_array.c


objs/src/core/ngx_list.o:	$(CORE_DEPS) \
	src/core/ngx_list.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_list.o \
		src/core/ngx_list.c


objs/src/core/ngx_hash.o:	$(CORE_DEPS) \
	src/core/ngx_hash.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_hash.o \
		src/core/ngx_hash.c


objs/src/core/ngx_buf.o:	$(CORE_DEPS) \
	src/core/ngx_buf.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_buf.o \
		src/core/ngx_buf.c


objs/src/core/ngx_queue.o:	$(CORE_DEPS) \
	src/core/ngx_queue.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_queue.o \
		src/core/ngx_queue.c


objs/src/core/ngx_output_chain.o:	$(CORE_DEPS) \
	src/core/ngx_output_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_output_chain.o \
		src/core/ngx_output_chain.c


objs/src/core/ngx_string.o:	$(CORE_DEPS) \
	src/core/ngx_string.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_string.o \
		src/core/ngx_string.c


objs/src/core/ngx_parse.o:	$(CORE_DEPS) \
	src/core/ngx_parse.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_parse.o \
		src/core/ngx_parse.c


objs/src/core/ngx_inet.o:	$(CORE_DEPS) \
	src/core/ngx_inet.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_inet.o \
		src/core/ngx_inet.c


objs/src/core/ngx_file.o:	$(CORE_DEPS) \
	src/core/ngx_file.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_file.o \
		src/core/ngx_file.c


objs/src/core/ngx_crc32.o:	$(CORE_DEPS) \
	src/core/ngx_crc32.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_crc32.o \
		src/core/ngx_crc32.c


objs/src/core/ngx_rbtree.o:	$(CORE_DEPS) \
	src/core/ngx_rbtree.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_rbtree.o \
		src/core/ngx_rbtree.c


objs/src/core/ngx_radix_tree.o:	$(CORE_DEPS) \
	src/core/ngx_radix_tree.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_radix_tree.o \
		src/core/ngx_radix_tree.c


objs/src/core/ngx_slab.o:	$(CORE_DEPS) \
	src/core/ngx_slab.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_slab.o \
		src/core/ngx_slab.c


objs/src/core/ngx_times.o:	$(CORE_DEPS) \
	src/core/ngx_times.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_times.o \
		src/core/ngx_times.c


objs/src/core/ngx_shmtx.o:	$(CORE_DEPS) \
	src/core/ngx_shmtx.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_shmtx.o \
		src/core/ngx_shmtx.c


objs/src/core/ngx_connection.o:	$(CORE_DEPS) \
	src/core/ngx_connection.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_connection.o \
		src/core/ngx_connection.c


objs/src/core/ngx_cycle.o:	$(CORE_DEPS) \
	src/core/ngx_cycle.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_cycle.o \
		src/core/ngx_cycle.c


objs/src/core/ngx_spinlock.o:	$(CORE_DEPS) \
	src/core/ngx_spinlock.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_spinlock.o \
		src/core/ngx_spinlock.c


objs/src/core/ngx_cpuinfo.o:	$(CORE_DEPS) \
	src/core/ngx_cpuinfo.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_cpuinfo.o \
		src/core/ngx_cpuinfo.c


objs/src/core/ngx_conf_file.o:	$(CORE_DEPS) \
	src/core/ngx_conf_file.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_conf_file.o \
		src/core/ngx_conf_file.c


objs/src/core/ngx_resolver.o:	$(CORE_DEPS) \
	src/core/ngx_resolver.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_resolver.o \
		src/core/ngx_resolver.c


objs/src/core/ngx_open_file_cache.o:	$(CORE_DEPS) \
	src/core/ngx_open_file_cache.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_open_file_cache.o \
		src/core/ngx_open_file_cache.c


objs/src/event/ngx_event.o:	$(CORE_DEPS) \
	src/event/ngx_event.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event.o \
		src/event/ngx_event.c


objs/src/event/ngx_event_timer.o:	$(CORE_DEPS) \
	src/event/ngx_event_timer.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_timer.o \
		src/event/ngx_event_timer.c


objs/src/event/ngx_event_posted.o:	$(CORE_DEPS) \
	src/event/ngx_event_posted.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_posted.o \
		src/event/ngx_event_posted.c


objs/src/event/ngx_event_busy_lock.o:	$(CORE_DEPS) \
	src/event/ngx_event_busy_lock.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_busy_lock.o \
		src/event/ngx_event_busy_lock.c


objs/src/event/ngx_event_accept.o:	$(CORE_DEPS) \
	src/event/ngx_event_accept.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_accept.o \
		src/event/ngx_event_accept.c


objs/src/event/ngx_event_connect.o:	$(CORE_DEPS) \
	src/event/ngx_event_connect.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_connect.o \
		src/event/ngx_event_connect.c


objs/src/event/ngx_event_pipe.o:	$(CORE_DEPS) \
	src/event/ngx_event_pipe.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_pipe.o \
		src/event/ngx_event_pipe.c


objs/src/os/unix/ngx_time.o:	$(CORE_DEPS) \
	src/os/unix/ngx_time.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_time.o \
		src/os/unix/ngx_time.c


objs/src/os/unix/ngx_errno.o:	$(CORE_DEPS) \
	src/os/unix/ngx_errno.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_errno.o \
		src/os/unix/ngx_errno.c


objs/src/os/unix/ngx_alloc.o:	$(CORE_DEPS) \
	src/os/unix/ngx_alloc.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_alloc.o \
		src/os/unix/ngx_alloc.c


objs/src/os/unix/ngx_files.o:	$(CORE_DEPS) \
	src/os/unix/ngx_files.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_files.o \
		src/os/unix/ngx_files.c


objs/src/os/unix/ngx_socket.o:	$(CORE_DEPS) \
	src/os/unix/ngx_socket.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_socket.o \
		src/os/unix/ngx_socket.c


objs/src/os/unix/ngx_recv.o:	$(CORE_DEPS) \
	src/os/unix/ngx_recv.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_recv.o \
		src/os/unix/ngx_recv.c


objs/src/os/unix/ngx_readv_chain.o:	$(CORE_DEPS) \
	src/os/unix/ngx_readv_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_readv_chain.o \
		src/os/unix/ngx_readv_chain.c


objs/src/os/unix/ngx_udp_recv.o:	$(CORE_DEPS) \
	src/os/unix/ngx_udp_recv.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_udp_recv.o \
		src/os/unix/ngx_udp_recv.c


objs/src/os/unix/ngx_send.o:	$(CORE_DEPS) \
	src/os/unix/ngx_send.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_send.o \
		src/os/unix/ngx_send.c


objs/src/os/unix/ngx_writev_chain.o:	$(CORE_DEPS) \
	src/os/unix/ngx_writev_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_writev_chain.o \
		src/os/unix/ngx_writev_chain.c


objs/src/os/unix/ngx_channel.o:	$(CORE_DEPS) \
	src/os/unix/ngx_channel.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_channel.o \
		src/os/unix/ngx_channel.c


objs/src/os/unix/ngx_shmem.o:	$(CORE_DEPS) \
	src/os/unix/ngx_shmem.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_shmem.o \
		src/os/unix/ngx_shmem.c


objs/src/os/unix/ngx_process.o:	$(CORE_DEPS) \
	src/os/unix/ngx_process.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_process.o \
		src/os/unix/ngx_process.c


objs/src/os/unix/ngx_daemon.o:	$(CORE_DEPS) \
	src/os/unix/ngx_daemon.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_daemon.o \
		src/os/unix/ngx_daemon.c


objs/src/os/unix/ngx_setproctitle.o:	$(CORE_DEPS) \
	src/os/unix/ngx_setproctitle.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_setproctitle.o \
		src/os/unix/ngx_setproctitle.c


objs/src/os/unix/ngx_posix_init.o:	$(CORE_DEPS) \
	src/os/unix/ngx_posix_init.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_posix_init.o \
		src/os/unix/ngx_posix_init.c


objs/src/os/unix/ngx_user.o:	$(CORE_DEPS) \
	src/os/unix/ngx_user.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_user.o \
		src/os/unix/ngx_user.c


objs/src/os/unix/ngx_process_cycle.o:	$(CORE_DEPS) \
	src/os/unix/ngx_process_cycle.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_process_cycle.o \
		src/os/unix/ngx_process_cycle.c


objs/src/os/unix/ngx_darwin_init.o:	$(CORE_DEPS) \
	src/os/unix/ngx_darwin_init.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_darwin_init.o \
		src/os/unix/ngx_darwin_init.c


objs/src/event/modules/ngx_kqueue_module.o:	$(CORE_DEPS) \
	src/event/modules/ngx_kqueue_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/modules/ngx_kqueue_module.o \
		src/event/modules/ngx_kqueue_module.c


objs/src/os/unix/ngx_darwin_sendfile_chain.o:	$(CORE_DEPS) \
	src/os/unix/ngx_darwin_sendfile_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_darwin_sendfile_chain.o \
		src/os/unix/ngx_darwin_sendfile_chain.c


objs/src/core/ngx_regex.o:	$(CORE_DEPS) \
	src/core/ngx_regex.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_regex.o \
		src/core/ngx_regex.c


objs/src/http/ngx_http.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http.o \
		src/http/ngx_http.c


objs/src/http/ngx_http_core_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_core_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_core_module.o \
		src/http/ngx_http_core_module.c


objs/src/http/ngx_http_special_response.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_special_response.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_special_response.o \
		src/http/ngx_http_special_response.c


objs/src/http/ngx_http_request.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_request.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_request.o \
		src/http/ngx_http_request.c


objs/src/http/ngx_http_parse.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_parse.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_parse.o \
		src/http/ngx_http_parse.c


objs/src/http/ngx_http_header_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_header_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_header_filter_module.o \
		src/http/ngx_http_header_filter_module.c


objs/src/http/ngx_http_write_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_write_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_write_filter_module.o \
		src/http/ngx_http_write_filter_module.c


objs/src/http/ngx_http_copy_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_copy_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_copy_filter_module.o \
		src/http/ngx_http_copy_filter_module.c


objs/src/http/modules/ngx_http_log_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_log_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_log_module.o \
		src/http/modules/ngx_http_log_module.c


objs/src/http/ngx_http_request_body.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_request_body.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_request_body.o \
		src/http/ngx_http_request_body.c


objs/src/http/ngx_http_variables.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_variables.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_variables.o \
		src/http/ngx_http_variables.c


objs/src/http/ngx_http_script.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_script.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_script.o \
		src/http/ngx_http_script.c


objs/src/http/ngx_http_upstream.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_upstream.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_upstream.o \
		src/http/ngx_http_upstream.c


objs/src/http/ngx_http_upstream_round_robin.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_upstream_round_robin.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_upstream_round_robin.o \
		src/http/ngx_http_upstream_round_robin.c


objs/src/http/ngx_http_parse_time.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_parse_time.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_parse_time.o \
		src/http/ngx_http_parse_time.c


objs/src/http/modules/ngx_http_static_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_static_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_static_module.o \
		src/http/modules/ngx_http_static_module.c


objs/src/http/modules/ngx_http_index_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_index_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_index_module.o \
		src/http/modules/ngx_http_index_module.c


objs/src/http/modules/ngx_http_chunked_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_chunked_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_chunked_filter_module.o \
		src/http/modules/ngx_http_chunked_filter_module.c


objs/src/http/modules/ngx_http_range_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_range_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_range_filter_module.o \
		src/http/modules/ngx_http_range_filter_module.c


objs/src/http/modules/ngx_http_headers_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_headers_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_headers_filter_module.o \
		src/http/modules/ngx_http_headers_filter_module.c


objs/src/http/modules/ngx_http_not_modified_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_not_modified_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_not_modified_filter_module.o \
		src/http/modules/ngx_http_not_modified_filter_module.c


objs/src/http/ngx_http_busy_lock.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_busy_lock.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_busy_lock.o \
		src/http/ngx_http_busy_lock.c


objs/src/http/ngx_http_file_cache.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_file_cache.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_file_cache.o \
		src/http/ngx_http_file_cache.c


objs/src/http/modules/ngx_http_gzip_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_gzip_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_gzip_filter_module.o \
		src/http/modules/ngx_http_gzip_filter_module.c


objs/src/http/ngx_http_postpone_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_postpone_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_postpone_filter_module.o \
		src/http/ngx_http_postpone_filter_module.c


objs/src/http/modules/ngx_http_ssi_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_ssi_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_ssi_filter_module.o \
		src/http/modules/ngx_http_ssi_filter_module.c


objs/src/http/modules/ngx_http_charset_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_charset_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_charset_filter_module.o \
		src/http/modules/ngx_http_charset_filter_module.c


objs/src/http/modules/ngx_http_userid_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_userid_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_userid_filter_module.o \
		src/http/modules/ngx_http_userid_filter_module.c


objs/src/http/modules/ngx_http_autoindex_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_autoindex_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_autoindex_module.o \
		src/http/modules/ngx_http_autoindex_module.c


objs/src/http/modules/ngx_http_auth_basic_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_auth_basic_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_auth_basic_module.o \
		src/http/modules/ngx_http_auth_basic_module.c


objs/src/http/modules/ngx_http_access_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_access_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_access_module.o \
		src/http/modules/ngx_http_access_module.c


objs/src/http/modules/ngx_http_limit_zone_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_limit_zone_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_limit_zone_module.o \
		src/http/modules/ngx_http_limit_zone_module.c


objs/src/http/modules/ngx_http_limit_req_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_limit_req_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_limit_req_module.o \
		src/http/modules/ngx_http_limit_req_module.c


objs/src/http/modules/ngx_http_geo_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_geo_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_geo_module.o \
		src/http/modules/ngx_http_geo_module.c


objs/src/http/modules/ngx_http_map_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_map_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_map_module.o \
		src/http/modules/ngx_http_map_module.c


objs/src/http/modules/ngx_http_split_clients_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_split_clients_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_split_clients_module.o \
		src/http/modules/ngx_http_split_clients_module.c


objs/src/http/modules/ngx_http_referer_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_referer_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_referer_module.o \
		src/http/modules/ngx_http_referer_module.c


objs/src/http/modules/ngx_http_rewrite_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_rewrite_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_rewrite_module.o \
		src/http/modules/ngx_http_rewrite_module.c


objs/src/http/modules/ngx_http_proxy_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_proxy_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_proxy_module.o \
		src/http/modules/ngx_http_proxy_module.c


objs/src/http/modules/ngx_http_fastcgi_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_fastcgi_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_fastcgi_module.o \
		src/http/modules/ngx_http_fastcgi_module.c


objs/src/http/modules/ngx_http_uwsgi_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_uwsgi_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_uwsgi_module.o \
		src/http/modules/ngx_http_uwsgi_module.c


objs/src/http/modules/ngx_http_scgi_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_scgi_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_scgi_module.o \
		src/http/modules/ngx_http_scgi_module.c


objs/src/http/modules/ngx_http_memcached_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_memcached_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_memcached_module.o \
		src/http/modules/ngx_http_memcached_module.c


objs/src/http/modules/ngx_http_empty_gif_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_empty_gif_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_empty_gif_module.o \
		src/http/modules/ngx_http_empty_gif_module.c


objs/src/http/modules/ngx_http_browser_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_browser_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_browser_module.o \
		src/http/modules/ngx_http_browser_module.c


objs/src/http/modules/ngx_http_upstream_ip_hash_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_upstream_ip_hash_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_upstream_ip_hash_module.o \
		src/http/modules/ngx_http_upstream_ip_hash_module.c


objs/addon/src/ndk.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../ngx_devel_kit/src/ndk.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ndk.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../ngx_devel_kit/src/ndk.c


objs/addon/src/ngx_http_set_base32.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_base32.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_base32.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_base32.c


objs/addon/src/ngx_http_set_default_value.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_default_value.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_default_value.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_default_value.c


objs/addon/src/ngx_http_set_hashed_upstream.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_hashed_upstream.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_hashed_upstream.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_hashed_upstream.c


objs/addon/src/ngx_http_set_quote_sql.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_quote_sql.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_quote_sql.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_quote_sql.c


objs/addon/src/ngx_http_set_quote_json.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_quote_json.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_quote_json.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_quote_json.c


objs/addon/src/ngx_http_set_unescape_uri.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_unescape_uri.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_unescape_uri.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_unescape_uri.c


objs/addon/src/ngx_http_set_misc_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_misc_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_misc_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_misc_module.c


objs/addon/src/ngx_http_set_escape_uri.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_escape_uri.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_escape_uri.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_escape_uri.c


objs/addon/src/ngx_http_set_hash.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_hash.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_hash.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_hash.c


objs/addon/src/ngx_http_set_local_today.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_local_today.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_local_today.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_local_today.c


objs/addon/src/ngx_http_set_hex.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_hex.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_hex.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_hex.c


objs/addon/src/ngx_http_set_base64.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_base64.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_set_base64.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../set-misc-nginx-module/src/ngx_http_set_base64.c


objs/addon/ngx_http_auth_request_module/ngx_http_auth_request_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../ngx_http_auth_request_module/ngx_http_auth_request_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/ngx_http_auth_request_module/ngx_http_auth_request_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../ngx_http_auth_request_module/ngx_http_auth_request_module.c


objs/addon/src/ngx_http_echo_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_module.c


objs/addon/src/ngx_http_echo_util.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_util.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_util.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_util.c


objs/addon/src/ngx_http_echo_timer.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_timer.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_timer.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_timer.c


objs/addon/src/ngx_http_echo_var.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_var.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_var.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_var.c


objs/addon/src/ngx_http_echo_handler.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_handler.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_handler.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_handler.c


objs/addon/src/ngx_http_echo_filter.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_filter.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_filter.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_filter.c


objs/addon/src/ngx_http_echo_sleep.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_sleep.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_sleep.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_sleep.c


objs/addon/src/ngx_http_echo_location.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_location.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_location.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_location.c


objs/addon/src/ngx_http_echo_echo.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_echo.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_echo.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_echo.c


objs/addon/src/ngx_http_echo_request_info.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_request_info.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_request_info.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_request_info.c


objs/addon/src/ngx_http_echo_subrequest.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_subrequest.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_subrequest.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_subrequest.c


objs/addon/src/ngx_http_echo_foreach.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_foreach.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_echo_foreach.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../echo-nginx-module/src/ngx_http_echo_foreach.c


objs/addon/src/ngx_http_memc_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_memc_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_module.c


objs/addon/src/ngx_http_memc_request.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_request.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_memc_request.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_request.c


objs/addon/src/ngx_http_memc_response.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_response.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_memc_response.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_response.c


objs/addon/src/ngx_http_memc_util.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_util.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_memc_util.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_util.c


objs/addon/src/ngx_http_memc_handler.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_handler.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_memc_handler.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../memc-nginx-module/src/ngx_http_memc_handler.c


objs/addon/src/ngx_http_lua_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_module.c


objs/addon/src/ngx_http_lua_headers.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_headers.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_headers.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_headers.c


objs/addon/src/ngx_http_lua_directive.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_directive.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_directive.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_directive.c


objs/addon/src/ngx_http_lua_hook.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_hook.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_hook.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_hook.c


objs/addon/src/ngx_http_lua_util.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_util.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_util.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_util.c


objs/addon/src/ngx_http_lua_cache.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_cache.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_cache.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_cache.c


objs/addon/src/ngx_http_lua_conf.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_conf.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_conf.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_conf.c


objs/addon/src/ngx_http_lua_contentby.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_contentby.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_contentby.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_contentby.c


objs/addon/src/ngx_http_lua_rewriteby.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_rewriteby.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_rewriteby.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_rewriteby.c


objs/addon/src/ngx_http_lua_accessby.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_accessby.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_accessby.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_accessby.c


objs/addon/src/ngx_http_lua_setby.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_setby.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_setby.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_setby.c


objs/addon/src/ngx_http_lua_filter.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_filter.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_filter.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_filter.c


objs/addon/src/ngx_http_lua_clfactory.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_clfactory.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_lua_clfactory.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../lua-nginx-module/src/ngx_http_lua_clfactory.c


objs/addon/src/ngx_http_srcache_filter_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../srcache-nginx-module/src/ngx_http_srcache_filter_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_srcache_filter_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../srcache-nginx-module/src/ngx_http_srcache_filter_module.c


objs/addon/src/ngx_http_srcache_util.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../srcache-nginx-module/src/ngx_http_srcache_util.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_srcache_util.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../srcache-nginx-module/src/ngx_http_srcache_util.c


objs/addon/src/ngx_http_drizzle_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_drizzle_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_module.c


objs/addon/src/ngx_http_drizzle_handler.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_handler.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_drizzle_handler.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_handler.c


objs/addon/src/ngx_http_drizzle_processor.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_processor.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_drizzle_processor.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_processor.c


objs/addon/src/ngx_http_upstream_drizzle.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_upstream_drizzle.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_upstream_drizzle.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_upstream_drizzle.c


objs/addon/src/ngx_http_drizzle_util.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_util.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_drizzle_util.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_util.c


objs/addon/src/ngx_http_drizzle_output.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_output.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_drizzle_output.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_output.c


objs/addon/src/ngx_http_drizzle_keepalive.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_keepalive.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_drizzle_keepalive.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_keepalive.c


objs/addon/src/ngx_http_drizzle_quoting.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_quoting.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_drizzle_quoting.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_quoting.c


objs/addon/src/ngx_http_drizzle_checker.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_checker.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_drizzle_checker.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../drizzle-nginx-module/src/ngx_http_drizzle_checker.c


objs/addon/src/ngx_http_rds_json_filter_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_filter_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_rds_json_filter_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_filter_module.c


objs/addon/src/ngx_http_rds_json_processor.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_processor.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_rds_json_processor.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_processor.c


objs/addon/src/ngx_http_rds_json_util.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_util.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_rds_json_util.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_util.c


objs/addon/src/ngx_http_rds_json_output.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_output.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_rds_json_output.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_output.c


objs/addon/src/ngx_http_rds_json_handler.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_handler.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_rds_json_handler.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../rds-json-nginx-module/src/ngx_http_rds_json_handler.c


objs/addon/nginx-eval-module/ngx_http_eval_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../nginx-eval-module/ngx_http_eval_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/nginx-eval-module/ngx_http_eval_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../nginx-eval-module/ngx_http_eval_module.c


objs/addon/src/ngx_http_xss_filter_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../xss-nginx-module/src/ngx_http_xss_filter_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_xss_filter_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../xss-nginx-module/src/ngx_http_xss_filter_module.c


objs/addon/src/ngx_http_xss_util.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../xss-nginx-module/src/ngx_http_xss_util.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_xss_util.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../xss-nginx-module/src/ngx_http_xss_util.c


objs/addon/ngx_http_upstream_keepalive/ngx_http_upstream_keepalive_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../ngx_http_upstream_keepalive/ngx_http_upstream_keepalive_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/ngx_http_upstream_keepalive/ngx_http_upstream_keepalive_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../ngx_http_upstream_keepalive/ngx_http_upstream_keepalive_module.c


objs/addon/src/ngx_http_encrypted_session_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../encrypted-session-nginx-module/src/ngx_http_encrypted_session_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_encrypted_session_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../encrypted-session-nginx-module/src/ngx_http_encrypted_session_module.c


objs/addon/src/ngx_http_encrypted_session_cipher.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../encrypted-session-nginx-module/src/ngx_http_encrypted_session_cipher.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_encrypted_session_cipher.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../encrypted-session-nginx-module/src/ngx_http_encrypted_session_cipher.c


objs/addon/src/ngx_http_form_input_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../form-input-nginx-module/src/ngx_http_form_input_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_form_input_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../form-input-nginx-module/src/ngx_http_form_input_module.c


objs/addon/src/ngx_http_headers_more_filter_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_filter_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_headers_more_filter_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_filter_module.c


objs/addon/src/ngx_http_headers_more_headers_out.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_headers_out.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_headers_more_headers_out.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_headers_out.c


objs/addon/src/ngx_http_headers_more_headers_in.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_headers_in.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_headers_more_headers_in.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_headers_in.c


objs/addon/src/ngx_http_headers_more_util.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_util.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_headers_more_util.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../headers-more-nginx-module/src/ngx_http_headers_more_util.c


objs/addon/src/ngx_http_redis2_module.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_redis2_module.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_module.c


objs/addon/src/ngx_http_redis2_handler.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_handler.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_redis2_handler.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_handler.c


objs/addon/src/ngx_http_redis2_reply.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_reply.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_redis2_reply.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_reply.c


objs/addon/src/ngx_http_redis2_util.o:	$(ADDON_DEPS) \
	/Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_util.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o objs/addon/src/ngx_http_redis2_util.o \
		/Users/ez/projects/nginx-monster-build/src/nginx/../redis2-nginx-module/src/ngx_http_redis2_util.c


install:	objs/nginx 		
	test -d '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx' || mkdir -p '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx'

	test -d '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/sbin' 		|| mkdir -p '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/sbin'
	test ! -f '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/sbin/nginx' 		|| mv '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/sbin/nginx' 			'$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/sbin/nginx.old'
	cp objs/nginx '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/sbin/nginx'

	test -d '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf' 		|| mkdir -p '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf'

	cp conf/koi-win '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf'
	cp conf/koi-utf '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf'
	cp conf/win-utf '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf'

	test -f '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/mime.types' 		|| cp conf/mime.types '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf'
	cp conf/mime.types '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/mime.types.default'

	test -f '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/fastcgi_params' 		|| cp conf/fastcgi_params '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf'
	cp conf/fastcgi_params 		'$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/fastcgi_params.default'

	test -f '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/fastcgi.conf' 		|| cp conf/fastcgi.conf '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf'
	cp conf/fastcgi.conf '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/fastcgi.conf.default'

	test -f '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/uwsgi_params' 		|| cp conf/uwsgi_params '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf'
	cp conf/uwsgi_params 		'$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/uwsgi_params.default'

	test -f '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/scgi_params' 		|| cp conf/scgi_params '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf'
	cp conf/scgi_params 		'$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/scgi_params.default'

	test -f '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/nginx.conf' 		|| cp conf/nginx.conf '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/nginx.conf'
	cp conf/nginx.conf '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/conf/nginx.conf.default'

	test -d '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/logs' 		|| mkdir -p '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/logs'

	test -d '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/logs' || 		mkdir -p '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/logs'

	test -d '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/html' 		|| cp -r html '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx'

	test -d '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/logs' || 		mkdir -p '$(DESTDIR)/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/logs'
