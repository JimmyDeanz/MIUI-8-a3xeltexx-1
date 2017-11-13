.class final enum Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
.super Ljava/lang/Enum;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SlideState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

.field public static final enum COLLAPSED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

.field public static final enum EXPANDED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    new-instance v0, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    const-string v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->$VALUES:[Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->$VALUES:[Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v0}, [Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method
