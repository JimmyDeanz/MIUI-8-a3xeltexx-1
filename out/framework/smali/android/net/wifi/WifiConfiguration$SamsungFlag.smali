.class public Landroid/net/wifi/WifiConfiguration$SamsungFlag;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungFlag"
.end annotation


# static fields
.field public static final CLEAR_ALL:I = 0x4

.field public static final SEC_INTRANET_AP:I = 0x3

.field public static final SEC_MOBILE_AP:I = 0x1

.field public static final SEC_OXYGEN_NETWORK:I = 0x2

.field public static final SKIP_INTERNET_SERVICE_CHECK:I = 0x0

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "sec_flags"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 329
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ISC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SECAP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OXG"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "INT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CLR"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration$SamsungFlag;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
