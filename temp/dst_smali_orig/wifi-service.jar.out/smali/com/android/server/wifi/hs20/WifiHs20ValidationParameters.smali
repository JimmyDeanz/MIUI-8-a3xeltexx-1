.class public Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;
.super Ljava/lang/Object;
.source "WifiHs20ValidationParameters.java"


# instance fields
.field public fqdnName:Ljava/lang/String;

.field public friendlyNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public iconPath:Ljava/lang/String;

.field public serverType:Ljava/lang/String;

.field public serverUri:Ljava/lang/String;

.field public sim:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
