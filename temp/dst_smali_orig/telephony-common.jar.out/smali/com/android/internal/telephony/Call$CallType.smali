.class public final enum Lcom/android/internal/telephony/Call$CallType;
.super Ljava/lang/Enum;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Call$CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Call$CallType;

.field public static final enum CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum NO_CALL:Lcom/android/internal/telephony/Call$CallType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "NO_CALL"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "CS_CALL_VOICE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "CS_CALL_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_VOICE"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_HDVIDEO"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_QCIFVIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_QVGAVIDEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_VIDEO_SHARE_TX"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_VIDEO_SHARE_RX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_CONFERENCE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_HDVIDEO_LAND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_HD720VIDEO"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_CIFVIDEO"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_CIFVIDEO_LAND"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_QVGAVIDEO_LAND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "IMS_CALL_HD720VIDEO_LAND"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/internal/telephony/Call$CallType;

    sget-object v1, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->$VALUES:[Lcom/android/internal/telephony/Call$CallType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Call$CallType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/internal/telephony/Call$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call$CallType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Call$CallType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->$VALUES:[Lcom/android/internal/telephony/Call$CallType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Call$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Call$CallType;

    return-object v0
.end method
