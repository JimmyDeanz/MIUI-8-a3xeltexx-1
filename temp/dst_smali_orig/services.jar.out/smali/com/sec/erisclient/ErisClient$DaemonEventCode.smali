.class Lcom/sec/erisclient/ErisClient$DaemonEventCode;
.super Ljava/lang/Object;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/ErisClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DaemonEventCode"
.end annotation


# static fields
.field private static final EVENT_CONNECTED:I = 0x1

.field private static final EVENT_CONNECTION_ACTIVE:I = 0x3

.field private static final EVENT_CONNECTION_RESET:I = 0x6

.field private static final EVENT_CONNECTION_SETUP_FAILURE:I = 0x5

.field private static final EVENT_DISCONNECTED:I = 0x2

.field private static final EVENT_ERROR:I = 0x7

.field private static final EVENT_NONE:I = 0x0

.field private static final EVENT_PEER_DISCONNECTED:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
