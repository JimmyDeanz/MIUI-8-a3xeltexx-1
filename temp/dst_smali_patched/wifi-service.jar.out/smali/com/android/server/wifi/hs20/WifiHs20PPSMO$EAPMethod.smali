.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EAPMethod"
.end annotation


# instance fields
.field public eapType:I

.field public innerEAPType:Ljava/lang/String;

.field public innerMethod:Ljava/lang/String;

.field public innerVendorID:I

.field public innerVendorType:I

.field public vendorID:I

.field public vendorType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
