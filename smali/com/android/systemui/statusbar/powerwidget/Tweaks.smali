.class public Lcom/android/systemui/statusbar/powerwidget/Tweaks;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "Tweaks.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const v0, 0x7f0a013b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/Tweaks;->setTitle(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/Tweaks;->isIndicatorEnabled:Z

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

    const v0, 0x7f0205f2

    return v0
.end method

.method protected onToggleClick()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.m0narx.tweaks"

    const-string v3, "com.m0narx.tweaks.main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/Tweaks;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onToggleLongClick()Z
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.m0narx.hub"

    const-string v3, "com.m0narx.hub.main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/Tweaks;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
