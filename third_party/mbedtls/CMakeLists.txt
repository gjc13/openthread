cmake_minimum_required (VERSION 3.7)

project(mbedtls)

set(MBEDTLS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/repo)

set(MBEDTLS_SRCS
    ${MBEDTLS_DIR}/library/aes.c
    ${MBEDTLS_DIR}/library/asn1parse.c
    ${MBEDTLS_DIR}/library/asn1write.c
    ${MBEDTLS_DIR}/library/base64.c
    ${MBEDTLS_DIR}/library/bignum.c
    ${MBEDTLS_DIR}/library/ccm.c
    ${MBEDTLS_DIR}/library/cipher.c
    ${MBEDTLS_DIR}/library/cipher_wrap.c
    ${MBEDTLS_DIR}/library/cmac.c
    ${MBEDTLS_DIR}/library/ctr_drbg.c
    ${MBEDTLS_DIR}/library/debug.c
    ${MBEDTLS_DIR}/library/ecdh.c
    ${MBEDTLS_DIR}/library/ecdsa.c
    ${MBEDTLS_DIR}/library/ecjpake.c
    ${MBEDTLS_DIR}/library/ecp_curves.c
    ${MBEDTLS_DIR}/library/ecp.c
    ${MBEDTLS_DIR}/library/entropy.c
    ${MBEDTLS_DIR}/library/entropy_poll.c
    ${MBEDTLS_DIR}/library/gcm.c
    ${MBEDTLS_DIR}/library/md.c
    ${MBEDTLS_DIR}/library/md_wrap.c
    ${MBEDTLS_DIR}/library/memory_buffer_alloc.c
    ${MBEDTLS_DIR}/library/oid.c
    ${MBEDTLS_DIR}/library/pem.c
    ${MBEDTLS_DIR}/library/pk.c
    ${MBEDTLS_DIR}/library/pk_wrap.c
    ${MBEDTLS_DIR}/library/pkparse.c
    ${MBEDTLS_DIR}/library/platform.c
    ${MBEDTLS_DIR}/library/platform_util.c
    ${MBEDTLS_DIR}/library/sha1.c
    ${MBEDTLS_DIR}/library/sha256.c
    ${MBEDTLS_DIR}/library/ssl_cookie.c
    ${MBEDTLS_DIR}/library/ssl_ciphersuites.c
    ${MBEDTLS_DIR}/library/ssl_cli.c
    ${MBEDTLS_DIR}/library/ssl_srv.c
    ${MBEDTLS_DIR}/library/ssl_ticket.c
    ${MBEDTLS_DIR}/library/ssl_tls.c
    ${MBEDTLS_DIR}/library/x509.c
    ${MBEDTLS_DIR}/library/x509_crt.c
    ${MBEDTLS_DIR}/library/rsa.c
    ${MBEDTLS_DIR}/library/rsa_internal.c
)

add_library(mbedtls ${MBEDTLS_SRCS})

target_include_directories(mbedtls
    PUBLIC
        ${MBEDTLS_DIR}/include
        ${MBEDTLS_DIR}/include/mbedtls
)

target_link_libraries(mbedtls
    PUBLIC
        mbedtls-config
        nrf_crypto
)
