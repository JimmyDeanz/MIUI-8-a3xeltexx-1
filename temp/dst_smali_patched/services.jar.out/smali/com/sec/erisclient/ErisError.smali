.class public final enum Lcom/sec/erisclient/ErisError;
.super Ljava/lang/Enum;
.source "ErisError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/erisclient/ErisError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_ALREADY_CONNECTED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_DAEMON_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_CA_CERTIFICATE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_CERTIFICATE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_DPD_TIMEOUT:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_EAP_METHOD:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_GW_ADDRESS:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_HOST_AUTHENTICATION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_DH_GROUP:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_ENCRYPTION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_INTEGRITY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_LIFETIME:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_VERSION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_WINDOW_SIZE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IM_CERTIFICATE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_INTERFACE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_INTERNAL_SUBNET:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IPSEC_ENCRYPTION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IPSEC_INTEGRITY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IPSEC_LIFETIME:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_OWN_IDENTITY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_PARAMETER:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_PASSWORD:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_PFS_DH_GROUP:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_PRESHARED_KEY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_PRIVATE_KEY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_RAC_ATTRIBUTE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_REMOTE_IDENTITY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_TUNNEL_MODE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_USERNAME:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_NEGOTIATION_ERROR:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_OK:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_PEER_ADDR_FAILED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_PEER_AUTH_FAILED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_PEER_INIT_UNREACHABLE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_OK"

    invoke-direct {v0, v1, v3}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_GENERIC_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_PEER_ADDR_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_ADDR_FAILED:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_PEER_AUTH_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_AUTH_FAILED:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_PEER_INIT_UNREACHABLE"

    invoke-direct {v0, v1, v7}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_INIT_UNREACHABLE:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_NO_CONNECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_NEGOTIATION_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_NEGOTIATION_ERROR:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_NOT_CONNECTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_DAEMON_NOT_CONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_DAEMON_STOPPED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_ALREADY_CONNECTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_ALREADY_CONNECTED:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_PARAMETER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PARAMETER:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_GW_ADDRESS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_GW_ADDRESS:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_HOST_AUTHENTICATION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_HOST_AUTHENTICATION:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_PRESHARED_KEY"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PRESHARED_KEY:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_TUNNEL_MODE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_TUNNEL_MODE:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_OWN_IDENTITY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_OWN_IDENTITY:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_REMOTE_IDENTITY"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_REMOTE_IDENTITY:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_CA_CERTIFICATE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CA_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_CERTIFICATE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_LIFETIME"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_LIFETIME:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_DH_GROUP"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_DH_GROUP:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_ENCRYPTION"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_INTEGRITY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_INTEGRITY:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_VERSION"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_VERSION:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_WINDOW_SIZE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_WINDOW_SIZE:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IPSEC_LIFETIME"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_LIFETIME:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IPSEC_ENCRYPTION"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IPSEC_INTEGRITY"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_INTEGRITY:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IPSEC_ALGORITHM_COMBINATION"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_PFS_DH_GROUP"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PFS_DH_GROUP:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_INTERNAL_SUBNET"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERNAL_SUBNET:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_INTERFACE"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERFACE:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_EAP_METHOD"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_EAP_METHOD:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IM_CERTIFICATE"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IM_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_PRIVATE_KEY"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PRIVATE_KEY:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_USERNAME"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_USERNAME:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_PASSWORD"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PASSWORD:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_VIRTUAL_ADAPTER_NAME"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_VIRTUAL_ADAPTER_CONFIGURATION"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_RAC_ATTRIBUTE"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_RAC_ATTRIBUTE:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/sec/erisclient/ErisError;

    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_DPD_TIMEOUT"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_DPD_TIMEOUT:Lcom/sec/erisclient/ErisError;

    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/sec/erisclient/ErisError;

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_PEER_ADDR_FAILED:Lcom/sec/erisclient/ErisError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_PEER_AUTH_FAILED:Lcom/sec/erisclient/ErisError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_PEER_INIT_UNREACHABLE:Lcom/sec/erisclient/ErisError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NEGOTIATION_ERROR:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_ALREADY_CONNECTED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PARAMETER:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_GW_ADDRESS:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_HOST_AUTHENTICATION:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PRESHARED_KEY:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_TUNNEL_MODE:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_OWN_IDENTITY:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_REMOTE_IDENTITY:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CA_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_LIFETIME:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_DH_GROUP:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_INTEGRITY:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_VERSION:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_WINDOW_SIZE:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_LIFETIME:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_INTEGRITY:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PFS_DH_GROUP:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERNAL_SUBNET:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERFACE:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_EAP_METHOD:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IM_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PRIVATE_KEY:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_USERNAME:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PASSWORD:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_RAC_ATTRIBUTE:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_DPD_TIMEOUT:Lcom/sec/erisclient/ErisError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/erisclient/ErisError;->$VALUES:[Lcom/sec/erisclient/ErisError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/erisclient/ErisError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sec/erisclient/ErisError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/ErisError;

    return-object v0
.end method

.method public static values()[Lcom/sec/erisclient/ErisError;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/erisclient/ErisError;->$VALUES:[Lcom/sec/erisclient/ErisError;

    invoke-virtual {v0}, [Lcom/sec/erisclient/ErisError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/erisclient/ErisError;

    return-object v0
.end method
