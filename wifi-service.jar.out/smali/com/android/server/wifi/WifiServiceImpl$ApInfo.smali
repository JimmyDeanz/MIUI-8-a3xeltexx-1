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
    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2006
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2007
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2008
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2009
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 2010
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 2011
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2012
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 2013
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 2014
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 2015
    const-string v0, "None"

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    .line 2016
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkname"    # Ljava/lang/String;

    .prologue
    .line 2018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2019
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2020
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;

    .prologue
    .line 2021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2022
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 2023
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2024
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;
    .param p3, "spname"    # Ljava/lang/String;

    .prologue
    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2026
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 2027
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2028
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 2029
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;

    .prologue
    .line 2034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2035
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2036
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2037
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2038
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 2039
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
    .line 2045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2046
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2047
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2048
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2049
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 2050
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2051
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
    .line 2058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2059
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2060
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2061
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2062
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 2063
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 2064
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 2065
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
    .line 2073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2074
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2075
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2076
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2077
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 2078
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 2079
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 2080
    iput-object p7, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    .line 2081
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
    .line 2082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2083
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2084
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2085
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2086
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 2087
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2088
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 2089
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
    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2067
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2068
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2069
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2070
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2071
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 2072
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
    .line 2052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2053
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2054
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2055
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2056
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2057
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "bopen"    # Z

    .prologue
    .line 2040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2041
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2042
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2043
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2044
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "bopen"    # Z

    .prologue
    .line 2030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2031
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2032
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2033
    return-void
.end method


# virtual methods
.method public getEap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    return-object v0
.end method

.method public getMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    return-object v0
.end method

.method public getSPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
