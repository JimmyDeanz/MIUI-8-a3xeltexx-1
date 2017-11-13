.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeSP"
.end annotation


# instance fields
.field public fqdn:Ljava/lang/String;

.field public friendlyName:Ljava/lang/String;

.field public homeOIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;",
            ">;"
        }
    .end annotation
.end field

.field public iconURL:Ljava/lang/String;

.field public networkIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;",
            ">;"
        }
    .end annotation
.end field

.field public otherHomePartner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;",
            ">;"
        }
    .end annotation
.end field

.field public roamingConsortium:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
