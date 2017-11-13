.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferredRoamingPartner"
.end annotation


# instance fields
.field public country:Ljava/lang/String;

.field public fQDNMatch:Ljava/lang/String;

.field public priority:I

.field public roamingPartnerID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
