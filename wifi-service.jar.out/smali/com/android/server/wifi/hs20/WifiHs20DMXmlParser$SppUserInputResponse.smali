.class public Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;
.super Ljava/lang/Object;
.source "WifiHs20DMXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SppUserInputResponse"
.end annotation


# instance fields
.field addMo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/addMoObj;",
            ">;"
        }
    .end annotation
.end field

.field getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

.field noMoUpdateNode:Ljava/lang/String;

.field sessionID:Ljava/lang/String;

.field sppError:Ljava/lang/String;

.field sppStatus:Ljava/lang/String;

.field sppVersion:Ljava/lang/String;

.field updateNode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
