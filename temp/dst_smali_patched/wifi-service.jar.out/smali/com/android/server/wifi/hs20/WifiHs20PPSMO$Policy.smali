.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# instance fields
.field public maximumBSSLoadValue:I

.field public minBackHaulThreshold:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;",
            ">;"
        }
    .end annotation
.end field

.field public policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

.field public preferredRoamingPartner:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;",
            ">;"
        }
    .end annotation
.end field

.field public protoPortTupple:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;",
            ">;"
        }
    .end annotation
.end field

.field public spExclusionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
