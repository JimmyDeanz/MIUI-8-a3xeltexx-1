.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final TRANSACTION_OnStartGestureWakeup:I = 0x22

.field static final TRANSACTION_OnStopGestureWakeup:I = 0x23

.field static final TRANSACTION_addAccessibilityInteractionConnection:I = 0x6

.field static final TRANSACTION_addClient:I = 0x1

.field static final TRANSACTION_assistantMenuRegister:I = 0x17

.field static final TRANSACTION_assistantMenuUpdate:I = 0x16

.field static final TRANSACTION_disableMagnifier:I = 0x1d

.field static final TRANSACTION_enableMagnifier:I = 0x1b

.field static final TRANSACTION_enableMagnifierByDisplayID:I = 0x1c

.field static final TRANSACTION_getClearableActiveNotificationsCount:I = 0x24

.field static final TRANSACTION_getEnabledAccessibilityServiceList:I = 0x4

.field static final TRANSACTION_getInstalledAccessibilityServiceList:I = 0x3

.field static final TRANSACTION_getWindowToken:I = 0xb

.field static final TRANSACTION_interrupt:I = 0x5

.field static final TRANSACTION_isColorBlind:I = 0xd

.field static final TRANSACTION_isScreenCurtainRunning:I = 0x14

.field static final TRANSACTION_isTopActivityInKnoxMode:I = 0x25

.field static final TRANSACTION_isTwoFingerGestureRecognitionEnabled:I = 0x11

.field static final TRANSACTION_isUniversalSwitchEnabled:I = 0x12

.field static final TRANSACTION_openGlobalActions:I = 0x1a

.field static final TRANSACTION_reboot:I = 0x19

.field static final TRANSACTION_registerGestureListenerForLauncher:I = 0x20

.field static final TRANSACTION_registerUiTestAutomationService:I = 0x8

.field static final TRANSACTION_removeAccessibilityInteractionConnection:I = 0x7

.field static final TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final TRANSACTION_setColorBlind:I = 0xc

.field static final TRANSACTION_setMagnificationSpec:I = 0x1e

.field static final TRANSACTION_setScreenCurtain:I = 0x15

.field static final TRANSACTION_setTalkbackMode:I = 0x13

.field static final TRANSACTION_setTwoFingerGestureRecognitionEnabled:I = 0x1f

.field static final TRANSACTION_setmDNIeAccessibilityMode:I = 0x10

.field static final TRANSACTION_setmDNIeColorBlind:I = 0xe

.field static final TRANSACTION_setmDNIeNegative:I = 0xf

.field static final TRANSACTION_shutdown:I = 0x18

.field static final TRANSACTION_temporaryEnableAccessibilityStateUntilKeyguardRemoved:I = 0xa

.field static final TRANSACTION_unregisterGestureListenerForLauncher:I = 0x21

.field static final TRANSACTION_unregisterUiTestAutomationService:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/accessibility/IAccessibilityManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    .local v0, "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v4

    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_2
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .local v0, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v4

    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_1

    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_3
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_4
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v5

    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_5
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    .local v1, "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I

    move-result v4

    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :sswitch_7
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/view/IWindow;
    :sswitch_8
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    .local v1, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .local v2, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_2

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_9
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .local v0, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :sswitch_a
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    move v1, v7

    .local v1, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    :cond_4
    move v1, v6

    goto :goto_4

    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(I)Landroid/os/IBinder;

    move-result-object v4

    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/os/IBinder;
    :sswitch_c
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v0, v7

    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .local v1, "_arg1":F
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setColorBlind(ZF)Z

    move-result v4

    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":F
    .end local v4    # "_result":Z
    :cond_6
    move v0, v6

    goto :goto_5

    :sswitch_d
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isColorBlind([I)Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":[I
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    move v0, v7

    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setmDNIeColorBlind(Z[I)Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":[I
    .end local v4    # "_result":Z
    :cond_9
    move v0, v6

    goto :goto_6

    :sswitch_f
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v0, v7

    .restart local v0    # "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setmDNIeNegative(Z)Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_b
    move v0, v6

    goto :goto_7

    :sswitch_10
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    move v1, v7

    .local v1, "_arg1":Z
    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setmDNIeAccessibilityMode(IZ)Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_d
    move v1, v6

    goto :goto_8

    .end local v0    # "_arg0":I
    :sswitch_11
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4    # "_result":Z
    :sswitch_12
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isUniversalSwitchEnabled()Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_f

    move v6, v7

    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4    # "_result":Z
    :sswitch_13
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setTalkbackMode()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_14
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isScreenCurtainRunning()Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_10

    move v6, v7

    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4    # "_result":Z
    :sswitch_15
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setScreenCurtain()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->assistantMenuUpdate(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_17
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->assistantMenuRegister(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_18
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12

    move v0, v7

    .local v0, "_arg0":Z
    :goto_a
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->shutdown(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_12
    move v0, v6

    goto :goto_a

    :sswitch_19
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_13

    move v0, v7

    .restart local v0    # "_arg0":Z
    :goto_b
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->reboot(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_13
    move v0, v6

    goto :goto_b

    :sswitch_1a
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->openGlobalActions()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1b
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .local v2, "_arg2":F
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableMagnifier(IIF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    :sswitch_1c
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .restart local v2    # "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableMagnifierByDisplayID(IIFI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    .end local v3    # "_arg3":I
    :sswitch_1d
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->disableMagnifier()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1e
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .local v0, "_arg0":Landroid/view/MagnificationSpec;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/view/MagnificationSpec;
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/MagnificationSpec;
    goto :goto_c

    .end local v0    # "_arg0":Landroid/view/MagnificationSpec;
    :sswitch_1f
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_15

    move v0, v7

    .local v0, "_arg0":Z
    :goto_d
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setTwoFingerGestureRecognitionEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_15
    move v0, v6

    goto :goto_d

    :sswitch_20
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerGestureListenerForLauncher(Landroid/os/IBinder;)Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_16

    move v6, v7

    :cond_16
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_21
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterGestureListenerForLauncher()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_22
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStartGestureWakeup()Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_17

    move v6, v7

    :cond_17
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4    # "_result":Z
    :sswitch_23
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStopGestureWakeup()Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_18

    move v6, v7

    :cond_18
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4    # "_result":Z
    :sswitch_24
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getClearableActiveNotificationsCount(Ljava/lang/String;)I

    move-result v4

    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_25
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isTopActivityInKnoxMode()Z

    move-result v4

    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_19

    move v6, v7

    :cond_19
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
