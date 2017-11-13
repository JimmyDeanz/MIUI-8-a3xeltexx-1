.class final Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayDeviceInfo"
.end annotation


# instance fields
.field devType:I

.field deviceId:Ljava/lang/CharSequence;

.field deviceName:Ljava/lang/CharSequence;

.field displayLabel:Ljava/lang/CharSequence;

.field iconType:I

.field netType:I

.field number:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/share/SShareSimpleSharing;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;)V
    .locals 2
    .param p2, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->netType:I

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->devType:I

    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->iconType:I

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .locals 1
    .param p2, "pDeviceName"    # Ljava/lang/CharSequence;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pDeviceId"    # Ljava/lang/CharSequence;
    .param p5, "pNumber"    # Ljava/lang/CharSequence;
    .param p6, "pIconType"    # I
    .param p7, "network"    # I
    .param p8, "device"    # I

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->netType:I

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->devType:I

    iput-object p3, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    iput p6, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->iconType:I

    iput p7, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->netType:I

    iput p8, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->devType:I

    return-void
.end method
