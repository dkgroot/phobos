/**
 * D header file for DragonFlyBSD
 *
 * Authors: Diederik de Groot(port:DragonFlyBSD)
 * Copied:  From std/c/freebsd
 */

/*
 * This module is just for making std.socket work under DragonFlyBSD, and these
 * definitions should actually be in druntime. (core.sys.posix.netdb or sth)
 */
/// Please import the core.sys.posix.* modules you need instead. This module will be deprecated in DMD 2.068.
module std.c.dragonflybsd.socket;

version (DragonFlyBSD):
public import core.sys.posix.netdb;
public import core.sys.posix.sys.socket : AF_APPLETALK, AF_IPX, SOCK_RDM, MSG_NOSIGNAL;
public import core.sys.posix.netinet.in_ : IPPROTO_IGMP, IPPROTO_GGP,
                                          IPPROTO_PUP, IPPROTO_IDP, IPPROTO_ND,
                                          IPPROTO_MAX, INADDR_LOOPBACK, INADDR_NONE;
