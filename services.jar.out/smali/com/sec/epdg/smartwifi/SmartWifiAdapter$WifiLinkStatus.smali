.class final enum Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;
.super Ljava/lang/Enum;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WifiLinkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

.field public static final enum CAPTIVE_AUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

.field public static final enum CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

.field public static final enum UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;


# instance fields
.field private final mText:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1621
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    const-string v1, "UNDETERMINABLE"

    const-string v2, "UNDETERMINABLE"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    .line 1622
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    const-string v1, "CAPTIVE_UNAUTHENTICATED"

    const-string v2, "CAPTIVE_UNAUTHENTICATED"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    .line 1623
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    const-string v1, "CAPTIVE_AUTHENTICATED"

    const-string v2, "CAPTIVE_AUTHENTICATED"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->CAPTIVE_AUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    .line 1620
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    sget-object v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->CAPTIVE_AUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->$VALUES:[Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1628
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1629
    iput p3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->mValue:I

    .line 1630
    iput-object p4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->mText:Ljava/lang/String;

    .line 1631
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1620
    const-class v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;
    .locals 1

    .prologue
    .line 1620
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->$VALUES:[Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->mText:Ljava/lang/String;

    return-object v0
.end method
