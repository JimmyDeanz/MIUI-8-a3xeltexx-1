.class public final enum Lcom/sec/erisclient/ErisEvent;
.super Ljava/lang/Enum;
.source "ErisEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/erisclient/ErisEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_NONE:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_NONE"

    invoke-direct {v0, v1, v3}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_NONE:Lcom/sec/erisclient/ErisEvent;

    .line 5
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    .line 6
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    .line 7
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_CONNECTION_ACTIVE"

    invoke-direct {v0, v1, v6}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    .line 8
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_PEER_DISCONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    .line 9
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_CONNECTION_SETUP_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    .line 10
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_CONNECTION_RESET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

    .line 11
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sec/erisclient/ErisEvent;

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_NONE:Lcom/sec/erisclient/ErisEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->$VALUES:[Lcom/sec/erisclient/ErisEvent;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/erisclient/ErisEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/sec/erisclient/ErisEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/ErisEvent;

    return-object v0
.end method

.method public static values()[Lcom/sec/erisclient/ErisEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->$VALUES:[Lcom/sec/erisclient/ErisEvent;

    invoke-virtual {v0}, [Lcom/sec/erisclient/ErisEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/erisclient/ErisEvent;

    return-object v0
.end method
