.class synthetic Lcom/sec/epdg/IPSecAdapterForEris$1;
.super Ljava/lang/Object;
.source "IPSecAdapterForEris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapterForEris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$erisclient$ErisError:[I

.field static final synthetic $SwitchMap$com$sec$erisclient$ErisEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 639
    invoke-static {}, Lcom/sec/erisclient/ErisError;->values()[Lcom/sec/erisclient/ErisError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    :try_start_0
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2f

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_PEER_ADDR_FAILED:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2e

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_PEER_AUTH_FAILED:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2d

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2c

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2b

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2a

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_ALREADY_CONNECTED:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_29

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PARAMETER:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_28

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_GW_ADDRESS:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_27

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_HOST_AUTHENTICATION:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_26

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PRESHARED_KEY:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_25

    :goto_a
    :try_start_b
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_TUNNEL_MODE:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_24

    :goto_b
    :try_start_c
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_OWN_IDENTITY:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_23

    :goto_c
    :try_start_d
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_REMOTE_IDENTITY:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_22

    :goto_d
    :try_start_e
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_LIFETIME:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_21

    :goto_e
    :try_start_f
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_DH_GROUP:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_20

    :goto_f
    :try_start_10
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1f

    :goto_10
    :try_start_11
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_INTEGRITY:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1e

    :goto_11
    :try_start_12
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_VERSION:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_1d

    :goto_12
    :try_start_13
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_WINDOW_SIZE:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1c

    :goto_13
    :try_start_14
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_LIFETIME:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1b

    :goto_14
    :try_start_15
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_1a

    :goto_15
    :try_start_16
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_INTEGRITY:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_19

    :goto_16
    :try_start_17
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_18

    :goto_17
    :try_start_18
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PFS_DH_GROUP:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_17

    :goto_18
    :try_start_19
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERNAL_SUBNET:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_16

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERFACE:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_15

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_EAP_METHOD:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_14

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IM_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_13

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PRIVATE_KEY:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_12

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_USERNAME:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_11

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PASSWORD:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_10

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_f

    :goto_20
    :try_start_21
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_e

    :goto_21
    :try_start_22
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_RAC_ATTRIBUTE:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_d

    :goto_22
    :try_start_23
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_c

    :goto_23
    :try_start_24
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_DPD_TIMEOUT:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_b

    :goto_24
    :try_start_25
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_a

    :goto_25
    :try_start_26
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CA_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_9

    :goto_26
    :try_start_27
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_8

    :goto_27
    :try_start_28
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_PEER_INIT_UNREACHABLE:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_7

    :goto_28
    :try_start_29
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_NEGOTIATION_ERROR:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_6

    .line 620
    :goto_29
    invoke-static {}, Lcom/sec/erisclient/ErisEvent;->values()[Lcom/sec/erisclient/ErisEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisEvent:[I

    :try_start_2a
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisEvent:[I

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_5

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisEvent:[I

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_4

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisEvent:[I

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_3

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisEvent:[I

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisEvent:[I

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_1

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisEvent:[I

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_0

    :goto_2f
    return-void

    :catch_0
    move-exception v0

    goto :goto_2f

    :catch_1
    move-exception v0

    goto :goto_2e

    :catch_2
    move-exception v0

    goto :goto_2d

    :catch_3
    move-exception v0

    goto :goto_2c

    :catch_4
    move-exception v0

    goto :goto_2b

    :catch_5
    move-exception v0

    goto :goto_2a

    .line 639
    :catch_6
    move-exception v0

    goto :goto_29

    :catch_7
    move-exception v0

    goto :goto_28

    :catch_8
    move-exception v0

    goto :goto_27

    :catch_9
    move-exception v0

    goto/16 :goto_26

    :catch_a
    move-exception v0

    goto/16 :goto_25

    :catch_b
    move-exception v0

    goto/16 :goto_24

    :catch_c
    move-exception v0

    goto/16 :goto_23

    :catch_d
    move-exception v0

    goto/16 :goto_22

    :catch_e
    move-exception v0

    goto/16 :goto_21

    :catch_f
    move-exception v0

    goto/16 :goto_20

    :catch_10
    move-exception v0

    goto/16 :goto_1f

    :catch_11
    move-exception v0

    goto/16 :goto_1e

    :catch_12
    move-exception v0

    goto/16 :goto_1d

    :catch_13
    move-exception v0

    goto/16 :goto_1c

    :catch_14
    move-exception v0

    goto/16 :goto_1b

    :catch_15
    move-exception v0

    goto/16 :goto_1a

    :catch_16
    move-exception v0

    goto/16 :goto_19

    :catch_17
    move-exception v0

    goto/16 :goto_18

    :catch_18
    move-exception v0

    goto/16 :goto_17

    :catch_19
    move-exception v0

    goto/16 :goto_16

    :catch_1a
    move-exception v0

    goto/16 :goto_15

    :catch_1b
    move-exception v0

    goto/16 :goto_14

    :catch_1c
    move-exception v0

    goto/16 :goto_13

    :catch_1d
    move-exception v0

    goto/16 :goto_12

    :catch_1e
    move-exception v0

    goto/16 :goto_11

    :catch_1f
    move-exception v0

    goto/16 :goto_10

    :catch_20
    move-exception v0

    goto/16 :goto_f

    :catch_21
    move-exception v0

    goto/16 :goto_e

    :catch_22
    move-exception v0

    goto/16 :goto_d

    :catch_23
    move-exception v0

    goto/16 :goto_c

    :catch_24
    move-exception v0

    goto/16 :goto_b

    :catch_25
    move-exception v0

    goto/16 :goto_a

    :catch_26
    move-exception v0

    goto/16 :goto_9

    :catch_27
    move-exception v0

    goto/16 :goto_8

    :catch_28
    move-exception v0

    goto/16 :goto_7

    :catch_29
    move-exception v0

    goto/16 :goto_6

    :catch_2a
    move-exception v0

    goto/16 :goto_5

    :catch_2b
    move-exception v0

    goto/16 :goto_4

    :catch_2c
    move-exception v0

    goto/16 :goto_3

    :catch_2d
    move-exception v0

    goto/16 :goto_2

    :catch_2e
    move-exception v0

    goto/16 :goto_1

    :catch_2f
    move-exception v0

    goto/16 :goto_0
.end method
