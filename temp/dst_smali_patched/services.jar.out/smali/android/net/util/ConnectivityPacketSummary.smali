.class public Landroid/net/util/ConnectivityPacketSummary;
.super Ljava/lang/Object;
.source "ConnectivityPacketSummary.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBytes:[B

.field private final mHwAddr:[B

.field private final mLength:I

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/net/util/ConnectivityPacketSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/ConnectivityPacketSummary;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([B[BI)V
    .locals 4
    .param p1, "hwaddr"    # [B
    .param p2, "buffer"    # [B
    .param p3, "length"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/ConnectivityPacketSummary;->mHwAddr:[B

    iput-object p2, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    array-length v1, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    iget v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .local v0, "sj":Ljava/util/StringJoiner;
    invoke-direct {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->parseEther(Ljava/util/StringJoiner;)V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    return-void
.end method

.method private static getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1
    .param p0, "ipv4"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1
    .param p0, "ipv6"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v0, 0x10

    invoke-static {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 4
    .param p0, "ip"    # Ljava/nio/ByteBuffer;
    .param p1, "byteLength"    # I

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, p1, :cond_1

    :cond_0
    const-string v3, "invalid"

    return-object v3

    :cond_1
    new-array v1, p1, [B

    .local v1, "bytes":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .end local v0    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .local v2, "uhe":Ljava/net/UnknownHostException;
    const-string v3, "unknown"

    return-object v3
.end method

.method private static getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 9
    .param p0, "mac"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ge v7, v8, :cond_1

    :cond_0
    const-string v6, "invalid"

    return-object v6

    :cond_1
    new-array v2, v8, [B

    .local v2, "bytes":[B
    array-length v7, v2

    invoke-virtual {p0, v2, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    array-length v7, v2

    new-array v5, v7, [Ljava/lang/Byte;

    .local v5, "printableBytes":[Ljava/lang/Byte;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v7, v2

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-byte v1, v2, v6

    .local v1, "b":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .end local v1    # "b":B
    :cond_2
    const-string v0, "%02x:%02x:%02x:%02x:%02x:%02x"

    .local v0, "MAC48_FORMAT":Ljava/lang/String;
    const-string v6, "%02x:%02x:%02x:%02x:%02x:%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private parseARP(Ljava/util/StringJoiner;)V
    .locals 7
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    const/4 v6, 0x1

    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x1c

    if-ge v4, v5, :cond_0

    const-string v4, "runt:"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_0
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v4

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v4

    const/16 v5, 0x800

    if-eq v4, v5, :cond_2

    :cond_1
    const-string v4, "unexpected header"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_2
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    .local v0, "opCode":I
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .local v1, "senderHwAddr":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .local v2, "senderIPv4":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .local v3, "targetIPv4":Ljava/lang/String;
    if-ne v0, v6, :cond_3

    const-string v4, "who-has"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_0
    return-void

    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    const-string v4, "reply"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_4
    const-string v4, "unknown opcode"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0
.end method

.method private parseDHCPv4(Ljava/util/StringJoiner;)V
    .locals 5
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    iget v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v0

    .local v0, "dhcpPacket":Landroid/net/dhcp/DhcpPacket;
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    :try_end_0
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dhcpPacket":Landroid/net/dhcp/DhcpPacket;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0
.end method

.method private parseEther(Ljava/util/StringJoiner;)V
    .locals 6
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    const/4 v5, 0x6

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_0

    const-string v3, "runt:"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_0
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .local v2, "srcMac":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mHwAddr:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TX"

    :goto_0
    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-static {v2}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .local v0, "dstMac":Ljava/nio/ByteBuffer;
    const-string v3, ">"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v1

    .local v1, "etherType":I
    sparse-switch v1, :sswitch_data_0

    const-string v3, "ethtype"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_1
    return-void

    .end local v0    # "dstMac":Ljava/nio/ByteBuffer;
    .end local v1    # "etherType":I
    :cond_1
    const-string v3, "RX"

    goto :goto_0

    .restart local v0    # "dstMac":Ljava/nio/ByteBuffer;
    .restart local v1    # "etherType":I
    :sswitch_0
    const-string v3, "arp"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseARP(Ljava/util/StringJoiner;)V

    goto :goto_1

    :sswitch_1
    const-string v3, "ipv4"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseIPv4(Ljava/util/StringJoiner;)V

    goto :goto_1

    :sswitch_2
    const-string v3, "ipv6"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseIPv6(Ljava/util/StringJoiner;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_1
        0x806 -> :sswitch_0
        0x86dd -> :sswitch_2
    .end sparse-switch
.end method

.method private parseICMPv6(Ljava/util/StringJoiner;)V
    .locals 4
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    const-string v2, "runt:"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_0
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v1

    .local v1, "icmp6Type":I
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    .local v0, "icmp6Code":I
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    packed-switch v1, :pswitch_data_0

    const-string v2, "type"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string v2, "code"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "rs"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "ra"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "ns"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    goto :goto_0

    :pswitch_3
    const-string v2, "na"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V
    .locals 7
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    :goto_0
    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_1

    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v2

    .local v2, "ndType":I
    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v1

    .local v1, "ndLength":I
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v0, v5, -0x2

    .local v0, "ndBytes":I
    if-ltz v0, :cond_0

    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v0, v5, :cond_2

    :cond_0
    const-string v5, "<malformed>"

    invoke-virtual {p1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .end local v0    # "ndBytes":I
    .end local v1    # "ndLength":I
    .end local v2    # "ndType":I
    :cond_1
    return-void

    .restart local v0    # "ndBytes":I
    .restart local v1    # "ndLength":I
    .restart local v2    # "ndType":I
    :cond_2
    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .local v3, "position":I
    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :pswitch_1
    const-string v5, "slla"

    invoke-virtual {p1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v5}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :pswitch_2
    const-string v5, "tlla"

    invoke-virtual {p1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v5}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :pswitch_3
    const-string v5, "mtu"

    invoke-virtual {p1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .local v4, "reserved":S
    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V
    .locals 4
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    const/4 v0, 0x4

    .local v0, "RESERVED":I
    const/16 v1, 0x14

    .local v1, "minReq":I
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    const-string v2, "runt:"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_0
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    return-void
.end method

.method private parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V
    .locals 3
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    const/16 v0, 0xc

    .local v0, "FLAGS_AND_TIMERS":I
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    const-string v1, "runt:"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_0
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    return-void
.end method

.method private parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V
    .locals 3
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    const/4 v0, 0x4

    .local v0, "RESERVED":I
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const-string v1, "runt:"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_0
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    return-void
.end method

.method private parseIPv4(Ljava/util/StringJoiner;)V
    .locals 10
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "runt"

    invoke-virtual {p1, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_0
    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .local v6, "startOfIpLayer":I
    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0xf

    mul-int/lit8 v2, v8, 0x4

    .local v2, "ipv4HeaderLength":I
    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-lt v8, v2, :cond_1

    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const/16 v9, 0x14

    if-ge v8, v9, :cond_2

    :cond_1
    const-string v8, "runt:"

    invoke-virtual {p1, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v8

    iget-object v9, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-static {v9}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_2
    add-int v7, v6, v2

    .local v7, "startOfTransportLayer":I
    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v6, 0x6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    invoke-static {v8}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v1

    .local v1, "flagsAndFragment":I
    and-int/lit16 v8, v1, 0x1fff

    if-eqz v8, :cond_4

    const/4 v3, 0x1

    .local v3, "isFragment":Z
    :goto_0
    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v6, 0x9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    invoke-static {v8}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v4

    .local v4, "protocol":I
    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v6, 0xc

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v8}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .local v5, "srcAddr":Ljava/lang/String;
    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v6, 0x10

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v8}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .local v0, "dstAddr":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget v8, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v4, v8, :cond_6

    const-string v8, "udp"

    invoke-virtual {p1, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v3, :cond_5

    const-string v8, "fragment"

    invoke-virtual {p1, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    :goto_1
    return-void

    .end local v0    # "dstAddr":Ljava/lang/String;
    .end local v3    # "isFragment":Z
    .end local v4    # "protocol":I
    .end local v5    # "srcAddr":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isFragment":Z
    goto :goto_0

    .restart local v0    # "dstAddr":Ljava/lang/String;
    .restart local v4    # "protocol":I
    .restart local v5    # "srcAddr":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseUDP(Ljava/util/StringJoiner;)V

    goto :goto_1

    :cond_6
    const-string v8, "proto"

    invoke-virtual {p1, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v8

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v3, :cond_3

    const-string v8, "fragment"

    invoke-virtual {p1, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1
.end method

.method private parseIPv6(Ljava/util/StringJoiner;)V
    .locals 6
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x28

    if-ge v4, v5, :cond_0

    const-string v4, "runt:"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_0
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .local v3, "startOfIpLayer":I
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v3, 0x6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v1

    .local v1, "protocol":I
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v3, 0x8

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .local v2, "srcAddr":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .local v0, "dstAddr":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v3, 0x28

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget v4, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    if-ne v1, v4, :cond_1

    const-string v4, "icmp6"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6(Ljava/util/StringJoiner;)V

    :goto_0
    return-void

    :cond_1
    const-string v4, "proto"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0
.end method

.method private parseUDP(Ljava/util/StringJoiner;)V
    .locals 6
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .prologue
    const/16 v5, 0x44

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    const-string v3, "runt:"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :cond_0
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .local v1, "previous":I
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v2

    .local v2, "srcPort":I
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    .local v0, "dstPort":I
    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v1, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eq v2, v5, :cond_1

    if-ne v0, v5, :cond_2

    :cond_1
    const-string v3, "dhcp4"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseDHCPv4(Ljava/util/StringJoiner;)V

    :cond_2
    return-void
.end method

.method public static summarize([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "hwaddr"    # [B
    .param p1, "buffer"    # [B

    .prologue
    array-length v0, p1

    invoke-static {p0, p1, v0}, Landroid/net/util/ConnectivityPacketSummary;->summarize([B[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static summarize([B[BI)Ljava/lang/String;
    .locals 3
    .param p0, "hwaddr"    # [B
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    if-nez p1, :cond_2

    return-object v2

    :cond_2
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    new-instance v0, Landroid/net/util/ConnectivityPacketSummary;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/util/ConnectivityPacketSummary;-><init>([B[BI)V

    invoke-virtual {v0}, Landroid/net/util/ConnectivityPacketSummary;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    return-object v0
.end method
