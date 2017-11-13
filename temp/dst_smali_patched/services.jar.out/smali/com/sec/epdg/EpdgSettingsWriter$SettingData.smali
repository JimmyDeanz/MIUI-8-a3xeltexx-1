.class Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
.super Ljava/lang/Object;
.source "EpdgSettingsWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgSettingsWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingData"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public val:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->val:Ljava/lang/String;

    return-void
.end method
