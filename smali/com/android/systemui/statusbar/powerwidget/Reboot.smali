.class public Lcom/android/systemui/statusbar/powerwidget/Reboot;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "Reboot.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const v0, 0x7f0a0149

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/Reboot;->setTitle(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/Reboot;->isIndicatorEnabled:Z

    return-void
.end method


# virtual methods
.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    return-object v0
.end method

.method protected getIconForState(Z)I
    .locals 1

    const v0, 0x7f020593

    return v0
.end method

.method protected onToggleClick()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ADV_REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/Reboot;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Reboot;->collapseStatusBar()V

    return-void
.end method

.method protected onToggleLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
