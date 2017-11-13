.class public final enum Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;
.super Ljava/lang/Enum;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktop/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DESKTOP_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

.field public static final enum DESKTOPMODE_ENTER:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

.field public static final enum DESKTOPMODE_EXIT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

.field public static final enum DOCK_CONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

.field public static final enum DOCK_DISCONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

.field public static final enum NONE:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->NONE:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    new-instance v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    const-string v1, "DOCK_CONNECT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_CONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    new-instance v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    const-string v1, "DOCK_DISCONNECT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_DISCONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    new-instance v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    const-string v1, "DESKTOPMODE_ENTER"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DESKTOPMODE_ENTER:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    new-instance v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    const-string v1, "DESKTOPMODE_EXIT"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DESKTOPMODE_EXIT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    sget-object v1, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->NONE:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_CONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_DISCONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DESKTOPMODE_ENTER:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DESKTOPMODE_EXIT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->$VALUES:[Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->$VALUES:[Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    return-object v0
.end method
