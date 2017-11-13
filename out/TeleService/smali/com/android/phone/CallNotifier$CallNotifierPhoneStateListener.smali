.class Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallNotifierPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 0
    .param p2, "subId"    # I

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->this$0:Lcom/android/phone/CallNotifier;

    .line 1137
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 1138
    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget v1, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->mSubId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(IZ)V

    .line 1150
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget v1, p0, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;->mSubId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(IZ)V

    .line 1144
    return-void
.end method
