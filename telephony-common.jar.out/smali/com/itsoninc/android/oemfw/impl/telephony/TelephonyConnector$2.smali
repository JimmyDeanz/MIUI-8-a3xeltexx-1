.class Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;
.super Ljava/lang/Object;
.source "TelephonyConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->authorizeVoice(Ljava/lang/String;III)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$direction:I

.field final synthetic val$phoneId:I

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iput-object p2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;->val$address:Ljava/lang/String;

    iput p3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;->val$direction:I

    iput p4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;->val$phoneId:I

    iput p5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;->val$subId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iget-object v0, v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;->val$address:Ljava/lang/String;

    iget v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;->val$direction:I

    iget v3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;->val$phoneId:I

    iget v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;->val$subId:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->authorizeVoice(Ljava/lang/String;III)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0

    .line 338
    :catch_1
    move-exception v0

    goto :goto_0
.end method
