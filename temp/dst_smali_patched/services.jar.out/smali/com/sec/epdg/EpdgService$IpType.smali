.class final enum Lcom/sec/epdg/EpdgService$IpType;
.super Ljava/lang/Enum;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgService$IpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgService$IpType;

.field public static final enum IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

.field public static final enum IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

.field public static final enum IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

.field public static final enum IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/EpdgService$IpType;

    const-string v1, "IP_TYPE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/EpdgService$IpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    new-instance v0, Lcom/sec/epdg/EpdgService$IpType;

    const-string v1, "IP_TYPE_V4"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/EpdgService$IpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    new-instance v0, Lcom/sec/epdg/EpdgService$IpType;

    const-string v1, "IP_TYPE_V6"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/EpdgService$IpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    new-instance v0, Lcom/sec/epdg/EpdgService$IpType;

    const-string v1, "IP_TYPE_V4V6"

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/EpdgService$IpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/epdg/EpdgService$IpType;

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/epdg/EpdgService$IpType;->$VALUES:[Lcom/sec/epdg/EpdgService$IpType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgService$IpType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgService$IpType;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->$VALUES:[Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgService$IpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method
