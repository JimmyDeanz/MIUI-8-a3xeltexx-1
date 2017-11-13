.class public final enum Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
.super Ljava/lang/Enum;
.source "ParcelableRawSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

.field public static final enum CDMA:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

.field public static final enum GSM:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

.field public static final enum UNKNOWN:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->UNKNOWN:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    new-instance v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    const-string v1, "GSM"

    invoke-direct {v0, v1, v3}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->GSM:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    new-instance v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    const-string v1, "CDMA"

    invoke-direct {v0, v1, v4}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->CDMA:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    sget-object v1, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->UNKNOWN:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->GSM:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->CDMA:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    aput-object v1, v0, v4

    sput-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->$VALUES:[Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    .locals 1

    .prologue
    sget-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->$VALUES:[Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    invoke-virtual {v0}, [Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    return-object v0
.end method
