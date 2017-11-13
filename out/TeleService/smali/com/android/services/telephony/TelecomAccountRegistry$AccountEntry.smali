.class final Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
.super Ljava/lang/Object;
.source "TelecomAccountRegistry.java"

# interfaces
.implements Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelecomAccountRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccountEntry"
.end annotation


# instance fields
.field private final mAccount:Landroid/telecom/PhoneAccount;

.field private final mIncomingCallNotifier:Lcom/android/services/telephony/PstnIncomingCallNotifier;

.field private mIsVideoCapable:Z

.field private mIsVideoPauseSupported:Z

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPhoneCapabilitiesNotifier:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

.field final synthetic this$0:Lcom/android/services/telephony/TelecomAccountRegistry;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelecomAccountRegistry;Lcom/android/internal/telephony/Phone;ZZ)V
    .locals 4
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "isEmergency"    # Z
    .param p4, "isDummy"    # Z

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    invoke-direct {p0, p3, p4}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->registerPstnPhoneAccount(ZZ)Landroid/telecom/PhoneAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    .line 76
    const-string v0, "Registered phoneAccount: %s with handle: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v1, Lcom/android/services/telephony/PstnIncomingCallNotifier;

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v1, v0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;-><init>(Lcom/android/internal/telephony/PhoneProxy;)V

    iput-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIncomingCallNotifier:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    .line 79
    new-instance v1, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v1, v0, p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;-><init>(Lcom/android/internal/telephony/PhoneProxy;Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;)V

    iput-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhoneCapabilitiesNotifier:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

    .line 81
    return-void
.end method

.method private registerPstnPhoneAccount(ZZ)Landroid/telecom/PhoneAccount;
    .locals 30
    .param p1, "isEmergency"    # Z
    .param p2, "isDummyAccount"    # Z

    .prologue
    .line 92
    if-eqz p2, :cond_5

    const-string v11, "Dummy "

    .line 95
    .local v11, "dummyPrefix":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v11, v1}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v16

    .line 100
    .local v16, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v22

    .line 101
    .local v22, "subId":I
    const/4 v8, 0x0

    .line 102
    .local v8, "color":I
    const/16 v19, -0x1

    .line 103
    .local v19, "slotId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$000(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v15

    .line 104
    .local v15, "line1Number":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 105
    const-string v15, ""

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 109
    .local v23, "subNumber":Ljava/lang/String;
    if-nez v23, :cond_1

    .line 110
    const-string v23, ""

    .line 115
    :cond_1
    const/4 v13, 0x0

    .line 119
    .local v13, "icon":Landroid/graphics/drawable/Icon;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$100(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/SubscriptionManager;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v17

    .line 122
    .local v17, "record":Landroid/telephony/SubscriptionInfo;
    if-eqz p1, :cond_6

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f08027d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f08027e

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "description":Ljava/lang/String;
    :goto_1
    const/16 v7, 0x36

    .line 167
    .local v7, "capabilities":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoCapable:Z

    .line 168
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoCapable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 169
    or-int/lit8 v7, v7, 0x8

    .line 171
    :cond_2
    if-eqz v17, :cond_3

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->updateVideoPauseSupport(Landroid/telephony/SubscriptionInfo;)V

    .line 175
    :cond_3
    if-nez v13, :cond_4

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 178
    .local v18, "res":Landroid/content/res/Resources;
    const v25, 0x7f020024

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 179
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    const v25, 0x7f0a0022

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 180
    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 182
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 183
    .local v24, "width":I
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 184
    .local v12, "height":I
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 185
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 186
    .local v6, "canvas":Landroid/graphics/Canvas;
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v27

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v28

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    invoke-virtual {v10, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    invoke-static {v5}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v13

    .line 192
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "height":I
    .end local v18    # "res":Landroid/content/res/Resources;
    .end local v24    # "width":I
    :cond_4
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v25

    const-string v26, "tel"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v25

    const-string v26, "tel"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/telecom/PhoneAccount$Builder;->setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/telecom/PhoneAccount$Builder;->setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/telecom/PhoneAccount$Builder;->setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v25

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "tel"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "voicemail"

    aput-object v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v4

    .line 205
    .local v4, "account":Landroid/telecom/PhoneAccount;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$300(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telecom/TelecomManager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 206
    return-object v4

    .line 92
    .end local v4    # "account":Landroid/telecom/PhoneAccount;
    .end local v7    # "capabilities":I
    .end local v8    # "color":I
    .end local v9    # "description":Ljava/lang/String;
    .end local v11    # "dummyPrefix":Ljava/lang/String;
    .end local v13    # "icon":Landroid/graphics/drawable/Icon;
    .end local v14    # "label":Ljava/lang/String;
    .end local v15    # "line1Number":Ljava/lang/String;
    .end local v16    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v17    # "record":Landroid/telephony/SubscriptionInfo;
    .end local v19    # "slotId":I
    .end local v22    # "subId":I
    .end local v23    # "subNumber":Ljava/lang/String;
    :cond_5
    const-string v11, ""

    goto/16 :goto_0

    .line 126
    .restart local v8    # "color":I
    .restart local v11    # "dummyPrefix":Ljava/lang/String;
    .restart local v13    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v15    # "line1Number":Ljava/lang/String;
    .restart local v16    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .restart local v17    # "record":Landroid/telephony/SubscriptionInfo;
    .restart local v19    # "slotId":I
    .restart local v22    # "subId":I
    .restart local v23    # "subNumber":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$000(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$000(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "label":Ljava/lang/String;
    move-object v9, v14

    .restart local v9    # "description":Ljava/lang/String;
    goto/16 :goto_1

    .line 131
    .end local v9    # "description":Ljava/lang/String;
    .end local v14    # "label":Ljava/lang/String;
    :cond_7
    const/16 v21, 0x0

    .line 133
    .local v21, "subDisplayName":Ljava/lang/CharSequence;
    if-eqz v17, :cond_8

    .line 134
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v21

    .line 135
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v19

    .line 136
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v8

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v13

    .line 141
    :cond_8
    invoke-static/range {v19 .. v19}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 142
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 147
    .local v20, "slotIdString":Ljava/lang/String;
    :goto_2
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 149
    const-string v25, "Could not get a display name for subid: %d"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f08027f

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v20, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 156
    :cond_9
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 157
    .restart local v14    # "label":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v26, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f08027f

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v20, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "description":Ljava/lang/String;
    goto/16 :goto_1

    .line 144
    .end local v9    # "description":Ljava/lang/String;
    .end local v14    # "label":Ljava/lang/String;
    .end local v20    # "slotIdString":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v25, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0800b9

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "slotIdString":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private updateVideoPauseSupport(Landroid/telephony/SubscriptionInfo;)V
    .locals 6
    .param p1, "subscriptionInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v5, 0x0

    .line 222
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 223
    .local v2, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    if-nez v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 225
    .local v1, "config":Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->mcc:I

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    .line 226
    iget v3, v1, Landroid/content/res/Configuration;->mnc:I

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVideoPauseSupport -- no mcc/mnc for sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using mcc/mnc from main context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v4, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 240
    .local v0, "b":Landroid/os/PersistableBundle;
    const-string v3, "support_pause_ims_video_calls_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoPauseSupported:Z

    .line 242
    return-void

    .line 231
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVideoPauseSupport -- mcc/mnc for sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    .line 234
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    goto :goto_0
.end method


# virtual methods
.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoPauseSupported()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoCapable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoPauseSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVideoCapabilitiesChanged(Z)V
    .locals 0
    .param p1, "isVideoCapable"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoCapable:Z

    .line 253
    return-void
.end method

.method teardown()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIncomingCallNotifier:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    invoke-virtual {v0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->teardown()V

    .line 85
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhoneCapabilitiesNotifier:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

    invoke-virtual {v0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->teardown()V

    .line 86
    return-void
.end method
