.class public Lcom/android/server/SsrmService;
.super Ljava/lang/Object;
.source "SsrmService.java"


# static fields
.field public static final AIR_VIEW_PROVIDER_NAME:Ljava/lang/String; = ""

.field public static final BASE_MODEL:Ljava/lang/String; = "islaquad"

.field public static final COMMON_GESTURE_WITH_FINGERHOVER:Z

.field public static GMS_BUNDLING:Z = false

.field public static final SSRM_FILENAME:Ljava/lang/String; = "ssrm_a3x_xx"

.field public static final SUPPORT_WEARABLE_HMT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SsrmService;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    sput-boolean v2, Lcom/android/server/SsrmService;->GMS_BUNDLING:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SSRM_SupportGmsBundling"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SSRM_SupportGmsBundling"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SsrmService;->GMS_BUNDLING:Z

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Lcom/android/server/SsrmService;->GMS_BUNDLING:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
