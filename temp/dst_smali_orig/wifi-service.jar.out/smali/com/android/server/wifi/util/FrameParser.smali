.class public Lcom/android/server/wifi/util/FrameParser;
.super Ljava/lang/Object;
.source "FrameParser.java"


# static fields
.field private static final ARP_HWADDR_LEN_LEN:B = 0x1t

.field private static final ARP_HWTYPE_LEN:B = 0x2t

.field private static final ARP_OPCODE_REPLY:B = 0x2t

.field private static final ARP_OPCODE_REQUEST:B = 0x1t

.field private static final ARP_PROTOADDR_LEN_LEN:B = 0x1t

.field private static final ARP_PROTOTYPE_LEN:B = 0x2t

.field private static final BOOTP_BOOT_FILENAME_LEN:S = 0x80s

.field private static final BOOTP_CLIENT_HWADDR_LEN:B = 0x10t

.field private static final BOOTP_ELAPSED_SECONDS_LEN:B = 0x2t

.field private static final BOOTP_FLAGS_LEN:B = 0x2t

.field private static final BOOTP_HOPCOUNT_LEN:B = 0x1t

.field private static final BOOTP_HWADDR_LEN_LEN:B = 0x1t

.field private static final BOOTP_HWTYPE_LEN:B = 0x1t

.field private static final BOOTP_MAGIC_COOKIE_LEN:B = 0x4t

.field private static final BOOTP_OPCODE_LEN:B = 0x1t

.field private static final BOOTP_SERVER_HOSTNAME_LEN:B = 0x40t

.field private static final BOOTP_TRANSACTION_ID_LEN:B = 0x4t

.field private static final BYTES_PER_OCT:B = 0x8t

.field private static final BYTES_PER_QUAD:B = 0x4t

.field private static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field private static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field private static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field private static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field private static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field private static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field private static final DHCP_MESSAGE_TYPE_RELEASE:B = 0x7t

.field private static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field private static final DHCP_OPTION_TAG_END:S = 0xffs

.field private static final DHCP_OPTION_TAG_MESSAGE_TYPE:S = 0x35s

.field private static final DHCP_OPTION_TAG_PAD:S = 0x0s

.field private static final EAPOL_KEY_DESCRIPTOR_RSN_KEY:B = 0x2t

.field private static final EAPOL_LENGTH_LEN:B = 0x2t

.field private static final EAPOL_TYPE_KEY:B = 0x3t

.field private static final ETHERNET_DST_MAC_ADDR_LEN:I = 0x6

.field private static final ETHERNET_SRC_MAC_ADDR_LEN:I = 0x6

.field private static final ETHERTYPE_ARP:S = 0x806s

.field private static final ETHERTYPE_EAPOL:S = -0x7772s

.field private static final ETHERTYPE_IP_V4:S = 0x800s

.field private static final ETHERTYPE_IP_V6:S = -0x7923s

.field private static final HTTPS_PORT:I = 0x1bb

.field private static final HTTP_PORTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICMP_TYPE_DEST_UNREACHABLE:B = 0x3t

.field private static final ICMP_TYPE_ECHO_REPLY:B = 0x0t

.field private static final ICMP_TYPE_ECHO_REQUEST:B = 0x8t

.field private static final ICMP_TYPE_REDIRECT:B = 0x5t

.field private static final ICMP_V6_TYPE_ECHO_REPLY:S = 0x81s

.field private static final ICMP_V6_TYPE_ECHO_REQUEST:S = 0x80s

.field private static final ICMP_V6_TYPE_MULTICAST_LISTENER_DISCOVERY:S = 0x8fs

.field private static final ICMP_V6_TYPE_NEIGHBOR_ADVERTISEMENT:S = 0x88s

.field private static final ICMP_V6_TYPE_NEIGHBOR_SOLICITATION:S = 0x87s

.field private static final ICMP_V6_TYPE_ROUTER_ADVERTISEMENT:S = 0x86s

.field private static final ICMP_V6_TYPE_ROUTER_SOLICITATION:S = 0x85s

.field private static final IEEE_80211_ADDR1_LEN:B = 0x6t

.field private static final IEEE_80211_ADDR2_LEN:B = 0x6t

.field private static final IEEE_80211_ADDR3_LEN:B = 0x6t

.field private static final IEEE_80211_AUTH_ALG_FAST_BSS_TRANSITION:S = 0x2s

.field private static final IEEE_80211_AUTH_ALG_OPEN:S = 0x0s

.field private static final IEEE_80211_AUTH_ALG_SHARED_KEY:S = 0x1s

.field private static final IEEE_80211_AUTH_ALG_SIMUL_AUTH_OF_EQUALS:S = 0x3s

.field private static final IEEE_80211_CAPABILITY_INFO_LEN:B = 0x2t

.field private static final IEEE_80211_DURATION_LEN:B = 0x2t

.field private static final IEEE_80211_FRAME_CTRL_FLAG_ORDER:B = -0x80t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_ASSOC_REQ:B = 0x0t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_ASSOC_RESP:B = 0x1t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_AUTH:B = 0xbt

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_PROBE_REQ:B = 0x4t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_PROBE_RESP:B = 0x5t

.field private static final IEEE_80211_FRAME_CTRL_TYPE_MGMT:B = 0x0t

.field private static final IEEE_80211_HT_CONTROL_LEN:B = 0x4t

.field private static final IEEE_80211_SEQUENCE_CONTROL_LEN:B = 0x2t

.field private static final IP_PROTO_ICMP:B = 0x1t

.field private static final IP_PROTO_TCP:B = 0x6t

.field private static final IP_PROTO_UDP:B = 0x11t

.field private static final IP_V4_ADDR_LEN:B = 0x4t

.field private static final IP_V4_DSCP_AND_ECN_LEN:B = 0x1t

.field private static final IP_V4_DST_ADDR_LEN:B = 0x4t

.field private static final IP_V4_FLAGS_AND_FRAG_OFFSET_LEN:B = 0x2t

.field private static final IP_V4_HEADER_CHECKSUM_LEN:B = 0x2t

.field private static final IP_V4_ID_LEN:B = 0x2t

.field private static final IP_V4_IHL_BYTE_MASK:B = 0xft

.field private static final IP_V4_SRC_ADDR_LEN:B = 0x4t

.field private static final IP_V4_TOTAL_LEN_LEN:B = 0x2t

.field private static final IP_V4_TTL_LEN:B = 0x1t

.field private static final IP_V4_VERSION_BYTE_MASK:B = -0x10t

.field private static final IP_V6_ADDR_LEN:B = 0x10t

.field private static final IP_V6_HEADER_TYPE_HOP_BY_HOP_OPTION:B = 0x0t

.field private static final IP_V6_HEADER_TYPE_ICMP_V6:B = 0x3at

.field private static final IP_V6_HOP_LIMIT_LEN:B = 0x1t

.field private static final IP_V6_PAYLOAD_LENGTH_LEN:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "FrameParser"

.field private static final TCP_SRC_PORT_LEN:B = 0x2t

.field private static final UDP_CHECKSUM_LEN:B = 0x2t

.field private static final UDP_PORT_BOOTPC:B = 0x44t

.field private static final UDP_PORT_BOOTPS:B = 0x43t

.field private static final UDP_PORT_NTP:B = 0x7bt

.field private static final WPA_KEYLEN_LEN:B = 0x2t

.field private static final WPA_KEY_IDENTIFIER_LEN:B = 0x8t

.field private static final WPA_KEY_INFO_FLAG_INSTALL:S = 0x40s

.field private static final WPA_KEY_INFO_FLAG_MIC:S = 0x100s

.field private static final WPA_KEY_INFO_FLAG_PAIRWISE:S = 0x8s

.field private static final WPA_KEY_IV_LEN:B = 0x10t

.field private static final WPA_KEY_MIC_LEN:B = 0x10t

.field private static final WPA_KEY_NONCE_LEN:B = 0x20t

.field private static final WPA_KEY_RECEIVE_SEQUENCE_COUNTER_LEN:B = 0x8t

.field private static final WPA_REPLAY_COUNTER_LEN:B = 0x8t


# instance fields
.field public mMostSpecificProtocolString:Ljava/lang/String;

.field public mResultString:Ljava/lang/String;

.field public mTypeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0xc38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0xc3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x1761

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x1f90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x1f98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x2c6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x76c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0xb35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0xa96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 5
    .param p1, "frameType"    # B
    .param p2, "frameBytes"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "N/A"

    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    const-string v2, "N/A"

    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    const-string v2, "N/A"

    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "frameBuffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/util/FrameParser;->parseEthernetFrame(Ljava/nio/ByteBuffer;)V

    .end local v1    # "frameBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "frameBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/util/FrameParser;->parseManagementFrame(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "frameBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "FrameParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dissection aborted mid-frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static decodeDhcpMessageType(S)Ljava/lang/String;
    .locals 2
    .param p0, "messageType"    # S

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Discover"

    return-object v0

    :pswitch_1
    const-string v0, "Offer"

    return-object v0

    :pswitch_2
    const-string v0, "Request"

    return-object v0

    :pswitch_3
    const-string v0, "Decline"

    return-object v0

    :pswitch_4
    const-string v0, "Ack"

    return-object v0

    :pswitch_5
    const-string v0, "Nak"

    return-object v0

    :pswitch_6
    const-string v0, "Release"

    return-object v0

    :pswitch_7
    const-string v0, "Inform"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private decodeIeee80211StatusCode(S)Ljava/lang/String;
    .locals 1
    .param p1, "statusCode"    # S

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v0, "Reserved"

    return-object v0

    :pswitch_0
    const-string v0, "Success"

    return-object v0

    :pswitch_1
    const-string v0, "Unspecified failure"

    return-object v0

    :pswitch_2
    const-string v0, "TDLS wakeup schedule rejected; alternative provided"

    return-object v0

    :pswitch_3
    const-string v0, "TDLS wakeup schedule rejected"

    return-object v0

    :pswitch_4
    const-string v0, "Reserved"

    return-object v0

    :pswitch_5
    const-string v0, "Security disabled"

    return-object v0

    :pswitch_6
    const-string v0, "Unacceptable lifetime"

    return-object v0

    :pswitch_7
    const-string v0, "Not in same BSS"

    return-object v0

    :pswitch_8
    const-string v0, "Reserved"

    return-object v0

    :pswitch_9
    const-string v0, "Capabilities mismatch"

    return-object v0

    :pswitch_a
    const-string v0, "Reassociation denied; could not confirm association exists"

    return-object v0

    :pswitch_b
    const-string v0, "Association denied for reasons outside standard"

    return-object v0

    :pswitch_c
    const-string v0, "Unsupported authentication algorithm"

    return-object v0

    :pswitch_d
    const-string v0, "Authentication sequence number of of sequence"

    return-object v0

    :pswitch_e
    const-string v0, "Authentication challenge failure"

    return-object v0

    :pswitch_f
    const-string v0, "Authentication timeout"

    return-object v0

    :pswitch_10
    const-string v0, "Association denied; too many STAs"

    return-object v0

    :pswitch_11
    const-string v0, "Association denied; must support BSSBasicRateSet"

    return-object v0

    :pswitch_12
    const-string v0, "Association denied; must support short preamble"

    return-object v0

    :pswitch_13
    const-string v0, "Association denied; must support PBCC"

    return-object v0

    :pswitch_14
    const-string v0, "Association denied; must support channel agility"

    return-object v0

    :pswitch_15
    const-string v0, "Association rejected; must support spectrum management"

    return-object v0

    :pswitch_16
    const-string v0, "Association rejected; unacceptable power capability"

    return-object v0

    :pswitch_17
    const-string v0, "Association rejected; unacceptable supported channels"

    return-object v0

    :pswitch_18
    const-string v0, "Association denied; must support short slot time"

    return-object v0

    :pswitch_19
    const-string v0, "Association denied; must support DSSS-OFDM"

    return-object v0

    :pswitch_1a
    const-string v0, "Association denied; must support HT"

    return-object v0

    :pswitch_1b
    const-string v0, "R0 keyholder unreachable (802.11r)"

    return-object v0

    :pswitch_1c
    const-string v0, "Association denied; must support PCO transition time"

    return-object v0

    :pswitch_1d
    const-string v0, "Refused temporarily"

    return-object v0

    :pswitch_1e
    const-string v0, "Robust management frame policy violation"

    return-object v0

    :pswitch_1f
    const-string v0, "Unspecified QoS failure"

    return-object v0

    :pswitch_20
    const-string v0, "Association denied; insufficient bandwidth for QoS"

    return-object v0

    :pswitch_21
    const-string v0, "Association denied; poor channel"

    return-object v0

    :pswitch_22
    const-string v0, "Association denied; must support QoS"

    return-object v0

    :pswitch_23
    const-string v0, "Reserved"

    return-object v0

    :pswitch_24
    const-string v0, "Declined"

    return-object v0

    :pswitch_25
    const-string v0, "Invalid parameters"

    return-object v0

    :pswitch_26
    const-string v0, "TS cannot be honored; changes suggested"

    return-object v0

    :pswitch_27
    const-string v0, "Invalid element"

    return-object v0

    :pswitch_28
    const-string v0, "Invalid group cipher"

    return-object v0

    :pswitch_29
    const-string v0, "Invalid pairwise cipher"

    return-object v0

    :pswitch_2a
    const-string v0, "Invalid auth/key mgmt proto (AKMP)"

    return-object v0

    :pswitch_2b
    const-string v0, "Unsupported RSNE version"

    return-object v0

    :pswitch_2c
    const-string v0, "Invalid RSNE capabilities"

    return-object v0

    :pswitch_2d
    const-string v0, "Cipher suite rejected by policy"

    return-object v0

    :pswitch_2e
    const-string v0, "TS cannot be honored now; try again later"

    return-object v0

    :pswitch_2f
    const-string v0, "Direct link rejected by policy"

    return-object v0

    :pswitch_30
    const-string v0, "Destination STA not in BSS"

    return-object v0

    :pswitch_31
    const-string v0, "Destination STA not configured for QoS"

    return-object v0

    :pswitch_32
    const-string v0, "Association denied; listen interval too large"

    return-object v0

    :pswitch_33
    const-string v0, "Invalid fast transition action frame count"

    return-object v0

    :pswitch_34
    const-string v0, "Invalid PMKID"

    return-object v0

    :pswitch_35
    const-string v0, "Invalid MDE"

    return-object v0

    :pswitch_36
    const-string v0, "Invalid FTE"

    return-object v0

    :pswitch_37
    const-string v0, "Unsupported TCLAS"

    return-object v0

    :pswitch_38
    const-string v0, "Requested TCLAS exceeds resources"

    return-object v0

    :pswitch_39
    const-string v0, "TS cannot be honored; try another BSS"

    return-object v0

    :pswitch_3a
    const-string v0, "GAS Advertisement not supported"

    return-object v0

    :pswitch_3b
    const-string v0, "No outstanding GAS request"

    return-object v0

    :pswitch_3c
    const-string v0, "No query response from GAS server"

    return-object v0

    :pswitch_3d
    const-string v0, "GAS query timeout"

    return-object v0

    :pswitch_3e
    const-string v0, "GAS response too large"

    return-object v0

    :pswitch_3f
    const-string v0, "Home network does not support request"

    return-object v0

    :pswitch_40
    const-string v0, "Advertisement server unreachable"

    return-object v0

    :pswitch_41
    const-string v0, "Reserved"

    return-object v0

    :pswitch_42
    const-string v0, "Rejected for SSP permissions"

    return-object v0

    :pswitch_43
    const-string v0, "Authentication required"

    return-object v0

    :pswitch_44
    const-string v0, "Reserved"

    return-object v0

    :pswitch_45
    const-string v0, "Invalid RSNE contents"

    return-object v0

    :pswitch_46
    const-string v0, "U-APSD coexistence unsupported"

    return-object v0

    :pswitch_47
    const-string v0, "Requested U-APSD coex mode unsupported"

    return-object v0

    :pswitch_48
    const-string v0, "Requested parameter unsupported with U-APSD coex"

    return-object v0

    :pswitch_49
    const-string v0, "Auth rejected; anti-clogging token required"

    return-object v0

    :pswitch_4a
    const-string v0, "Auth rejected; offered group is not supported"

    return-object v0

    :pswitch_4b
    const-string v0, "Cannot find alternative TBTT"

    return-object v0

    :pswitch_4c
    const-string v0, "Transmission failure"

    return-object v0

    :pswitch_4d
    const-string v0, "Requested TCLAS not supported"

    return-object v0

    :pswitch_4e
    const-string v0, "TCLAS resources exhausted"

    return-object v0

    :pswitch_4f
    const-string v0, "Rejected with suggested BSS transition"

    return-object v0

    :pswitch_50
    const-string v0, "Reserved"

    return-object v0

    :pswitch_51
    const-string v0, "<unspecified>"

    return-object v0

    :pswitch_52
    const-string v0, "Refused due to external reason"

    return-object v0

    :pswitch_53
    const-string v0, "Refused; AP out of memory"

    return-object v0

    :pswitch_54
    const-string v0, "Refused; emergency services not supported"

    return-object v0

    :pswitch_55
    const-string v0, "GAS query response outstanding"

    return-object v0

    :pswitch_56
    const-string v0, "Reserved"

    return-object v0

    :pswitch_57
    const-string v0, "Failed; reservation conflict"

    return-object v0

    :pswitch_58
    const-string v0, "Failed; exceeded MAF limit"

    return-object v0

    :pswitch_59
    const-string v0, "Failed; exceeded MCCA track limit"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
    .end packed-switch
.end method

.method private static getUnsignedByte(Ljava/nio/ByteBuffer;)S
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static getUnsignedShort(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private parseArpPacket(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const-string v1, "ARP"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v0

    .local v0, "opCode":I
    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "Request"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v1, "Reply"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseAssociationResponse(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .local v0, "resultCode":S
    const-string v1, "%d: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0}, Lcom/android/server/wifi/util/FrameParser;->decodeIeee80211StatusCode(S)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    return-void
.end method

.method private parseAuthenticationFrame(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .local v0, "algorithm":S
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .local v3, "sequenceNum":S
    const/4 v1, 0x0

    .local v1, "hasResultCode":Z
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .local v2, "resultCode":S
    const-string v4, "%d: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-direct {p0, v2}, Lcom/android/server/wifi/util/FrameParser;->decodeIeee80211StatusCode(S)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    .end local v2    # "resultCode":S
    :cond_1
    return-void

    :pswitch_0
    if-ne v3, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    if-eq v3, v5, :cond_2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseDhcpPacket(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const-string v2, "DHCP"

    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x40

    add-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v1

    .local v1, "dhcpOptionTag":S
    if-eqz v1, :cond_0

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    .end local v1    # "dhcpOptionTag":S
    :cond_1
    return-void

    .restart local v1    # "dhcpOptionTag":S
    :cond_2
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .local v0, "dhcpOptionLen":S
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const-string v2, "FrameParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHCP option len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected |1|)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v2

    invoke-static {v2}, Lcom/android/server/wifi/util/FrameParser;->decodeDhcpMessageType(S)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch
.end method

.method private parseEapolPacket(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v6, 0x2

    const-string v5, "EAPOL"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v2

    .local v2, "eapolVersion":S
    const/4 v5, 0x1

    if-lt v2, v5, :cond_0

    if-le v2, v6, :cond_1

    :cond_0
    const-string v5, "FrameParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized EAPOL version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v1

    .local v1, "eapolType":S
    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const-string v5, "FrameParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized EAPOL type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .local v0, "eapolKeyDescriptorType":S
    if-eq v0, v6, :cond_3

    const-string v5, "FrameParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized key descriptor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .local v4, "wpaKeyInfo":S
    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_4

    const-string v5, "Group Key"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    :goto_0
    and-int/lit16 v5, v4, 0x100

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " message 1/4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :cond_4
    const-string v5, "Pairwise Key"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    goto :goto_0

    :cond_5
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " message 3/4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x10

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v3

    .local v3, "wpaKeyDataLen":I
    if-lez v3, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " message 2/4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    :goto_1
    return-void

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " message 4/4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseEthernetFrame(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const-string v1, "Ethernet"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .local v0, "etherType":S
    sparse-switch v0, :sswitch_data_0

    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIpv4Packet(Ljava/nio/ByteBuffer;)V

    return-void

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseArpPacket(Ljava/nio/ByteBuffer;)V

    return-void

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIpv6Packet(Ljava/nio/ByteBuffer;)V

    return-void

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseEapolPacket(Ljava/nio/ByteBuffer;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7923 -> :sswitch_2
        -0x7772 -> :sswitch_3
        0x800 -> :sswitch_0
        0x806 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseIcmpPacket(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const-string v1, "ICMP"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .local v0, "messageType":S
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_1
    const-string v1, "Echo Reply"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_2
    const-string v1, "Destination Unreachable"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_3
    const-string v1, "Redirect"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_4
    const-string v1, "Echo Request"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private parseIcmpV6Packet(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const-string v1, "ICMPv6"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .local v0, "icmpV6Type":S
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_1
    const-string v1, "Echo Request"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_2
    const-string v1, "Echo Reply"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_3
    const-string v1, "Router Solicitation"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_4
    const-string v1, "Router Advertisement"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_5
    const-string v1, "Neighbor Solicitation"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_6
    const-string v1, "Neighbor Advertisement"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_7
    const-string v1, "MLDv2 report"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static parseIeee80211FrameCtrlSubtype(B)B
    .locals 1
    .param p0, "b"    # B

    .prologue
    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    return v0
.end method

.method private static parseIeee80211FrameCtrlType(B)B
    .locals 1
    .param p0, "b"    # B

    .prologue
    and-int/lit8 v0, p0, 0xc

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    return v0
.end method

.method private static parseIeee80211FrameCtrlVersion(B)B
    .locals 1
    .param p0, "b"    # B

    .prologue
    and-int/lit8 v0, p0, 0x3

    int-to-byte v0, v0

    return v0
.end method

.method private parseIpv4Packet(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const-string v4, "IPv4"

    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .local v3, "versionAndHeaderLen":B
    and-int/lit8 v4, v3, -0x10

    shr-int/lit8 v2, v4, 0x4

    .local v2, "version":I
    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    const-string v4, "FrameParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IPv4 header: Unrecognized protocol version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v1

    .local v1, "protocolNumber":S
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    and-int/lit8 v4, v3, 0xf

    mul-int/lit8 v0, v4, 0x4

    .local v0, "headerLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIcmpPacket(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseTcpPacket(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseUdpPacket(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseIpv6Packet(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const-string v4, "IPv6"

    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .local v3, "versionClassAndLabel":I
    const/high16 v4, -0x10000000

    and-int/2addr v4, v3

    shr-int/lit8 v2, v4, 0x1c

    .local v2, "version":I
    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    const-string v4, "FrameParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IPv6 header: invalid IP version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .local v0, "nextHeaderType":S
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v1, v4, 0x8

    .local v1, "thisHeaderLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .end local v1    # "thisHeaderLen":I
    :cond_1
    packed-switch v0, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Option/Protocol "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIcmpV6Packet(Ljava/nio/ByteBuffer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method private parseManagementFrame(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string v5, "802.11 Mgmt"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .local v1, "frameControlVersionTypeSubtype":B
    invoke-static {v1}, Lcom/android/server/wifi/util/FrameParser;->parseIeee80211FrameCtrlVersion(B)B

    move-result v4

    .local v4, "ieee80211Version":B
    if-eqz v4, :cond_0

    const-string v5, "FrameParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized 802.11 version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v1}, Lcom/android/server/wifi/util/FrameParser;->parseIeee80211FrameCtrlType(B)B

    move-result v3

    .local v3, "ieee80211FrameType":B
    if-eqz v3, :cond_1

    const-string v5, "FrameParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected frame type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .local v0, "frameControlFlags":B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    and-int/lit8 v5, v0, -0x80

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    invoke-static {v1}, Lcom/android/server/wifi/util/FrameParser;->parseIeee80211FrameCtrlSubtype(B)B

    move-result v2

    .local v2, "ieee80211FrameSubtype":B
    sparse-switch v2, :sswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected subtype "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :sswitch_0
    const-string v5, "Association Request"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :sswitch_1
    const-string v5, "Association Response"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseAssociationResponse(Ljava/nio/ByteBuffer;)V

    return-void

    :sswitch_2
    const-string v5, "Probe Request"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :sswitch_3
    const-string v5, "Probe Response"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    return-void

    :sswitch_4
    const-string v5, "Authentication"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseAuthenticationFrame(Ljava/nio/ByteBuffer;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method private parseTcpPacket(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const-string v1, "TCP"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v0

    .local v0, "dstPort":I
    const/16 v1, 0x1bb

    if-ne v0, v1, :cond_1

    const-string v1, "HTTPS"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HTTP"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseUdpPacket(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v6, 0x7b

    const/16 v5, 0x44

    const/16 v4, 0x43

    const-string v3, "UDP"

    iput-object v3, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v2

    .local v2, "srcPort":I
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v0

    .local v0, "dstPort":I
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v1

    .local v1, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-ne v2, v5, :cond_1

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseDhcpPacket(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    if-ne v2, v4, :cond_2

    if-eq v0, v5, :cond_0

    :cond_2
    if-eq v2, v6, :cond_3

    if-ne v0, v6, :cond_4

    :cond_3
    const-string v3, "NTP"

    iput-object v3, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    return-void

    :cond_4
    return-void
.end method
