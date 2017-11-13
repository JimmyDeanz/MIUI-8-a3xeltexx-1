.class public Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private Eap:Ljava/lang/String;

.field private Identity:Ljava/lang/String;

.field private MCCMNC:Ljava/lang/String;

.field private NetworkName:Ljava/lang/String;

.field private Password:Ljava/lang/String;

.field private Phase2:Ljava/lang/String;

.field private Priority:Ljava/lang/String;

.field private SPName:Ljava/lang/String;

.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    const-string v0, "None"

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkname"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;
    .param p3, "spname"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "networkname"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "identity"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "identity"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "phase2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "networkname"    # Ljava/lang/String;
    .param p6, "spname"    # Ljava/lang/String;
    .param p7, "bspname"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "networkname"    # Ljava/lang/String;
    .param p5, "spname"    # Ljava/lang/String;
    .param p6, "bopen"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "networkname"    # Ljava/lang/String;
    .param p5, "bopen"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "bopen"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "bopen"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEap()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    return-object v0
.end method

.method public getMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase2()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    return-object v0
.end method

.method public getSPName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
